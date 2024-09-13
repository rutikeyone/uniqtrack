import 'dart:async';

import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/features/accounts/domain/user_changes_use_case.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/core/common/validation/entities/password.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

import 'states/states.dart';

part 'login_store.g.dart';

abstract interface class LoginStoreBuilder {
  LoginStore create(BuildContext context);
}

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  final AccountsRepository _accountsRepository;
  final CommonUIDelegate _commonUIDelegate;

  final UserChangesUseCase _authStateChangesUseCase;
  StreamSubscription<User?>? _authStateChangesStreamSubscription;

  _LoginStore({
    required AccountsRepository accountsRepository,
    required CommonUIDelegate commonUIDelegate,
    required UserChangesUseCase authStateChangesUseCase,
  })  : _accountsRepository = accountsRepository,
        _commonUIDelegate = commonUIDelegate,
        _authStateChangesUseCase = authStateChangesUseCase;

  @observable
  Email emailState = const Email.pure();

  @observable
  Password passwordState = const Password.pure();

  @observable
  LoginStatusState loginStatusState = const LoginStatusState.pure();

  @observable
  LoginActions? actions;

  @computed
  bool get canLogin {
    final List<FormzInput> inputs = [emailState, passwordState];
    final isAllInputValidate = inputs.every((input) => input.isValid);
    final registerInProgress = loginStatusState.maybeWhen(
      pending: () => true,
      orElse: () => false,
    );

    return isAllInputValidate && !registerInProgress;
  }

  @computed
  LoginState get state => LoginState(
        email: emailState,
        password: passwordState,
        loginStateStatus: loginStatusState,
        canLogin: canLogin,
      );

  @action
  void updateEmail(String? value) {
    if (value == null) return;
    final newEmailState = Email.dirty(value);

    emailState = newEmailState;
  }

  @action
  void updatePassword(String? value) {
    if (value == null) return;
    final newPasswordState = Password.dirty(value);

    passwordState = newPasswordState;
  }

  @action
  Future<void> login() async {
    final canLogin = state.canLogin;
    if (!canLogin) return;

    final email = state.email.value;
    final password = state.password.value;

    _commonUIDelegate.showLoader();
    actions = const LoginActions.hideFocus();
    loginStatusState = const LoginStatusState.pending();

    final loginResult = await _accountsRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    loginResult.fold(
      _handleLoginFailureResult,
      _handleLoginSuccessResult,
    );
  }

  void _handleLoginFailureResult(AppError l) {
    _commonUIDelegate.hideLoader();
    loginStatusState = const LoginStatusState.failure();

    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleLoginSuccessResult(_) {
    const duration = Duration(milliseconds: 200);
    Future.delayed(duration, () {
      loginStatusState = const LoginStatusState.success();
    });

    _authStateChangesStreamSubscription?.cancel();
    _authStateChangesStreamSubscription = null;
    _authStateChangesStreamSubscription =
        _authStateChangesUseCase.call().listen(_onAuthStateChanges);
  }

  void _onAuthStateChanges(User? event) {
    _commonUIDelegate.hideLoader();
    _authStateChangesStreamSubscription?.cancel();
    _authStateChangesStreamSubscription = null;
  }

  void navigateToForgotPassword() {
    actions = LoginActions.navigateToForgotPassword(email: emailState.value);
  }

  void dispose() {
    _authStateChangesStreamSubscription?.cancel();
    _authStateChangesStreamSubscription = null;
  }
}
