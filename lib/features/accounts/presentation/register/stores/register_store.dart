import 'dart:async';

import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/core/common/validation/entities/name.dart';
import 'package:uniqtrack/core/common/validation/entities/password.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

import 'state/states.dart';

part 'register_store.g.dart';

abstract interface class RegisterStoreBuilder {
  RegisterStore create(BuildContext context);
}

class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore with Store {
  final AccountsRepository _accountsRepository;
  final CommonUIDelegate _commonUIDelegate;

  _RegisterStore({
    required AccountsRepository accountsRepository,
    required CommonUIDelegate commonUIDelegate,
  })  : _accountsRepository = accountsRepository,
        _commonUIDelegate = commonUIDelegate;

  @observable
  ImagePickerModeState pickerModeState =
      const ImagePickerModeState.placeholder();

  @observable
  Gender genderState = const Gender.male();

  @observable
  Email emailState = const Email.pure();

  @observable
  Password passwordState = const Password.pure();

  @observable
  Name nameState = const Name.pure();

  @observable
  RegisterStatusState registerStatusState = const RegisterStatusState.pure();

  @observable
  RegisterActions? actions;

  @computed
  RegisterState get state => RegisterState(
        modeState: pickerModeState,
        email: emailState,
        password: passwordState,
        gender: genderState,
        name: nameState,
        canRegister: canRegister,
        registerStatusState: registerStatusState,
      );

  @computed
  bool get isMaleSelectedState => state.isMaleSelected;

  @computed
  bool get isFemaleSelectedState => state.isFemaleSelected;

  @computed
  bool get canRegister {
    final List<FormzInput> inputs = [emailState, passwordState, nameState];
    final isAllInputValidate = inputs.every((input) => input.isValid);
    final registerInProgress = registerStatusState.maybeWhen(
      pending: () => true,
      orElse: () => false,
    );

    return isAllInputValidate && !registerInProgress;
  }

  @action
  Future<void> _chooseImageFromGallery() async {
    final chooseImageResult =
        await _accountsRepository.chooseImageFromGallery();

    chooseImageResult.fold(
      (error) => _handleFailureChooseImage(
        error,
        callback: _chooseImageFromGallery,
      ),
      _handleSuccessChooseImage,
    );
  }

  @action
  Future<void> _chooseImageFromCamera() async {
    final chooseImageResult = await _accountsRepository.chooseImageFromCamera();
    chooseImageResult.fold(
      (error) => _handleFailureChooseImage(
        error,
        callback: _chooseImageFromCamera,
      ),
      _handleSuccessChooseImage,
    );
  }

  @action
  void updateGender(Gender newGender) {
    genderState = newGender;
  }

  @action
  void showImageSourceChooser() {
    actions = RegisterActions.showImageSourceChooser(
      chooseImageFromGallery: _chooseImageFromGallery,
      chooseImageFromCamera: _chooseImageFromCamera,
    );
  }

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
  void updateName(String? value) {
    if (value == null) return;
    final newNameState = Name.dirty(value);

    nameState = newNameState;
  }

  @action
  Future<void> register() async {
    final canRegister = state.canRegister;
    if (!canRegister) return;

    final email = state.email.value;
    final name = state.name.value;
    final password = state.password.value;
    final gender = state.gender;

    final file = pickerModeState.when(
      placeholder: () => null,
      photo: (file) => file,
    );

    _commonUIDelegate.showLoader();
    actions = const RegisterActions.hideFocus();
    registerStatusState = const RegisterStatusState.pending();

    final registerResult = await _accountsRepository.register(
      email: email,
      name: name,
      password: password,
      gender: gender,
      file: file,
    );

    registerResult.fold(
      _handleRegisterFailureResult,
      _handleRegisterSuccessResult,
    );
  }

  void _handleSuccessChooseImage(PermissionResult<File?> result) {
    result.fold(
      (error) {
        final category = error.category;
        final header = category.header();
        final body = category.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );
      },
      (file) {
        if (file == null) return;
        final photoImagePickerModeState =
            ImagePickerModeState.photo(file: file);
        pickerModeState = photoImagePickerModeState;
      },
    );
  }

  void _handleFailureChooseImage(
    AppError l, {
    required VoidCallback callback,
  }) {
    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();
    final close = l.close();

    final activity = l.activity(
      requestPermissionAgain: callback,
      openSettings: _commonUIDelegate.openAppSettings,
    );

    _commonUIDelegate.cupertinoDialog(
      header: header,
      activity: activity,
      close: close,
      body: body,
    );
  }

  void _handleRegisterFailureResult(AppError l) {
    _commonUIDelegate.hideLoader();
    registerStatusState = const RegisterStatusState.failure();
    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleRegisterSuccessResult(_) {
    final duration = const Duration(milliseconds: 200);

    _commonUIDelegate.hideLoader();
    registerStatusState = const RegisterStatusState.success();

    Future.delayed(duration, () {
      const header = AppStrings.notification();
      const body = AppStrings.theUserHasBeenSuccessfullyRegistered();

      _commonUIDelegate.cupertinoDialog(
        header: header,
        body: body,
      );
    });
  }
}
