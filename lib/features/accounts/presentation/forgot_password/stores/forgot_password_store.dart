import 'dart:async';

import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';

import 'states/states.dart';

part 'forgot_password_store.g.dart';

abstract interface class ForgotPasswordStoreBuilder {
  ForgotPasswordStore create(String? email);
}

class ForgotPasswordStore = _ForgotPasswordStore with _$ForgotPasswordStore;

abstract class _ForgotPasswordStore with Store {
  late final AccountsRepository _accountsRepository;
  late final CommonUIDelegate _commonUIDelegate;
  final String? _emailArgument;

  @observable
  late Email emailState = _emailArgument != null && _emailArgument.isNotEmpty
      ? Email.dirty(_emailArgument)
      : Email.pure();

  @observable
  ForgotStatusState forgotStatusState = ForgotStatusState.pure();

  @observable
  ForgotActions? actions;

  @computed
  bool get canForgotPassword {
    final List<FormzInput> inputs = [emailState];
    final isAllInputValidate = inputs.every((input) => input.isValid);
    final registerInProgress = forgotStatusState.maybeWhen(
      pending: () => true,
      orElse: () => false,
    );

    return isAllInputValidate && !registerInProgress;
  }

  @computed
  ForgotPasswordState get state => ForgotPasswordState(
        email: emailState,
        forgotStatusState: forgotStatusState,
        canForgotPassword: canForgotPassword,
      );

  _ForgotPasswordStore({
    required AccountsRepository accountsRepository,
    required CommonUIDelegate commonUIDelegate,
    required String? emailArgument,
  })  : _emailArgument = emailArgument,
        _accountsRepository = accountsRepository,
        _commonUIDelegate = commonUIDelegate;

  @action
  void updateEmail(String? value) {
    if (value == null) return;
    final newEmailState = Email.dirty(value);

    emailState = newEmailState;
  }

  Future<void> forgotPassword() async {
    final canForgotPassword = state.canForgotPassword;
    if (!canForgotPassword) return;

    final email = emailState.value;

    actions = const ForgotActions.hideFocus();
    forgotStatusState = const ForgotStatusState.pending();

    _commonUIDelegate.showLoader();

    final forgotPasswordResult =
        await _accountsRepository.sendPasswordResetEmail(email);

    forgotPasswordResult.fold(
      _handleForgotPasswordFailureResult,
      _handleForgotPasswordSuccessResult,
    );
  }

  void _handleForgotPasswordFailureResult(AppError l) {
    _commonUIDelegate.hideLoader();
    forgotStatusState = ForgotStatusState.failure();
    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleForgotPasswordSuccessResult(_) {
    _commonUIDelegate.hideLoader();
    forgotStatusState = ForgotStatusState.success();

    final duration = const Duration(milliseconds: 200);

    Future.delayed(
      duration,
      () {
        final header = AppStrings.notification();
        final body =
            AppStrings.thePasswordHasBeenSentToTheSpecifiedEmailAddress();

        _commonUIDelegate.cupertinoDialog(
            header: header,
            body: body,
            closeCallback: () {
              actions = ForgotActions.navigateBack();
            });
      },
    );
  }
}
