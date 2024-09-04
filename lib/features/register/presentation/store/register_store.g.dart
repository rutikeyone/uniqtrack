// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterStore on _RegisterStore, Store {
  Computed<RegisterState>? _$stateComputed;

  @override
  RegisterState get state =>
      (_$stateComputed ??= Computed<RegisterState>(() => super.state,
              name: '_RegisterStore.state'))
          .value;
  Computed<bool>? _$isMaleSelectedStateComputed;

  @override
  bool get isMaleSelectedState => (_$isMaleSelectedStateComputed ??=
          Computed<bool>(() => super.isMaleSelectedState,
              name: '_RegisterStore.isMaleSelectedState'))
      .value;
  Computed<bool>? _$isFemaleSelectedStateComputed;

  @override
  bool get isFemaleSelectedState => (_$isFemaleSelectedStateComputed ??=
          Computed<bool>(() => super.isFemaleSelectedState,
              name: '_RegisterStore.isFemaleSelectedState'))
      .value;

  late final _$pickerModeStateAtom =
      Atom(name: '_RegisterStore.pickerModeState', context: context);

  @override
  ImagePickerModeState get pickerModeState {
    _$pickerModeStateAtom.reportRead();
    return super.pickerModeState;
  }

  @override
  set pickerModeState(ImagePickerModeState value) {
    _$pickerModeStateAtom.reportWrite(value, super.pickerModeState, () {
      super.pickerModeState = value;
    });
  }

  late final _$emailStateAtom =
      Atom(name: '_RegisterStore.emailState', context: context);

  @override
  Email get emailState {
    _$emailStateAtom.reportRead();
    return super.emailState;
  }

  @override
  set emailState(Email value) {
    _$emailStateAtom.reportWrite(value, super.emailState, () {
      super.emailState = value;
    });
  }

  late final _$passwordStateAtom =
      Atom(name: '_RegisterStore.passwordState', context: context);

  @override
  Password get passwordState {
    _$passwordStateAtom.reportRead();
    return super.passwordState;
  }

  @override
  set passwordState(Password value) {
    _$passwordStateAtom.reportWrite(value, super.passwordState, () {
      super.passwordState = value;
    });
  }

  late final _$nameStateAtom =
      Atom(name: '_RegisterStore.nameState', context: context);

  @override
  Name get nameState {
    _$nameStateAtom.reportRead();
    return super.nameState;
  }

  @override
  set nameState(Name value) {
    _$nameStateAtom.reportWrite(value, super.nameState, () {
      super.nameState = value;
    });
  }

  late final _$actionsAtom =
      Atom(name: '_RegisterStore.actions', context: context);

  @override
  RegisterActions? get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(RegisterActions? value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  late final _$_chooseImageFromGalleryAsyncAction =
      AsyncAction('_RegisterStore._chooseImageFromGallery', context: context);

  @override
  Future<void> _chooseImageFromGallery() {
    return _$_chooseImageFromGalleryAsyncAction
        .run(() => super._chooseImageFromGallery());
  }

  late final _$_chooseImageFromCameraAsyncAction =
      AsyncAction('_RegisterStore._chooseImageFromCamera', context: context);

  @override
  Future<void> _chooseImageFromCamera() {
    return _$_chooseImageFromCameraAsyncAction
        .run(() => super._chooseImageFromCamera());
  }

  late final _$_RegisterStoreActionController =
      ActionController(name: '_RegisterStore', context: context);

  @override
  void updateGender(GenderState newGenderState) {
    final _$actionInfo = _$_RegisterStoreActionController.startAction(
        name: '_RegisterStore.updateGender');
    try {
      return super.updateGender(newGenderState);
    } finally {
      _$_RegisterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showImageSourceChooser() {
    final _$actionInfo = _$_RegisterStoreActionController.startAction(
        name: '_RegisterStore.showImageSourceChooser');
    try {
      return super.showImageSourceChooser();
    } finally {
      _$_RegisterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateEmail(String? value) {
    final _$actionInfo = _$_RegisterStoreActionController.startAction(
        name: '_RegisterStore.updateEmail');
    try {
      return super.updateEmail(value);
    } finally {
      _$_RegisterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatePassword(String? value) {
    final _$actionInfo = _$_RegisterStoreActionController.startAction(
        name: '_RegisterStore.updatePassword');
    try {
      return super.updatePassword(value);
    } finally {
      _$_RegisterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateName(String? value) {
    final _$actionInfo = _$_RegisterStoreActionController.startAction(
        name: '_RegisterStore.updateName');
    try {
      return super.updateName(value);
    } finally {
      _$_RegisterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pickerModeState: ${pickerModeState},
emailState: ${emailState},
passwordState: ${passwordState},
nameState: ${nameState},
actions: ${actions},
state: ${state},
isMaleSelectedState: ${isMaleSelectedState},
isFemaleSelectedState: ${isFemaleSelectedState}
    ''';
  }
}
