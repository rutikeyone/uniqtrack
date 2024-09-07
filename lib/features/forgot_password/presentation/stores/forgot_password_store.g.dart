// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ForgotPasswordStore on _ForgotPasswordStore, Store {
  Computed<bool>? _$canForgotPasswordComputed;

  @override
  bool get canForgotPassword => (_$canForgotPasswordComputed ??= Computed<bool>(
          () => super.canForgotPassword,
          name: '_ForgotPasswordStore.canForgotPassword'))
      .value;
  Computed<ForgotPasswordState>? _$stateComputed;

  @override
  ForgotPasswordState get state =>
      (_$stateComputed ??= Computed<ForgotPasswordState>(() => super.state,
              name: '_ForgotPasswordStore.state'))
          .value;

  late final _$emailStateAtom =
      Atom(name: '_ForgotPasswordStore.emailState', context: context);

  @override
  Email get emailState {
    _$emailStateAtom.reportRead();
    return super.emailState;
  }

  bool _emailStateIsInitialized = false;

  @override
  set emailState(Email value) {
    _$emailStateAtom.reportWrite(
        value, _emailStateIsInitialized ? super.emailState : null, () {
      super.emailState = value;
      _emailStateIsInitialized = true;
    });
  }

  late final _$forgotStatusStateAtom =
      Atom(name: '_ForgotPasswordStore.forgotStatusState', context: context);

  @override
  ForgotStatusState get forgotStatusState {
    _$forgotStatusStateAtom.reportRead();
    return super.forgotStatusState;
  }

  @override
  set forgotStatusState(ForgotStatusState value) {
    _$forgotStatusStateAtom.reportWrite(value, super.forgotStatusState, () {
      super.forgotStatusState = value;
    });
  }

  late final _$actionsAtom =
      Atom(name: '_ForgotPasswordStore.actions', context: context);

  @override
  ForgotActions? get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(ForgotActions? value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  late final _$_ForgotPasswordStoreActionController =
      ActionController(name: '_ForgotPasswordStore', context: context);

  @override
  void updateEmail(String? value) {
    final _$actionInfo = _$_ForgotPasswordStoreActionController.startAction(
        name: '_ForgotPasswordStore.updateEmail');
    try {
      return super.updateEmail(value);
    } finally {
      _$_ForgotPasswordStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailState: ${emailState},
forgotStatusState: ${forgotStatusState},
actions: ${actions},
canForgotPassword: ${canForgotPassword},
state: ${state}
    ''';
  }
}
