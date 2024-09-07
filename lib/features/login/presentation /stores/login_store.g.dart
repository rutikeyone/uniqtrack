// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  Computed<bool>? _$canLoginComputed;

  @override
  bool get canLogin => (_$canLoginComputed ??=
          Computed<bool>(() => super.canLogin, name: '_LoginStore.canLogin'))
      .value;
  Computed<LoginState>? _$stateComputed;

  @override
  LoginState get state => (_$stateComputed ??=
          Computed<LoginState>(() => super.state, name: '_LoginStore.state'))
      .value;

  late final _$emailStateAtom =
      Atom(name: '_LoginStore.emailState', context: context);

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
      Atom(name: '_LoginStore.passwordState', context: context);

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

  late final _$loginStatusStateAtom =
      Atom(name: '_LoginStore.loginStatusState', context: context);

  @override
  LoginStatusState get loginStatusState {
    _$loginStatusStateAtom.reportRead();
    return super.loginStatusState;
  }

  @override
  set loginStatusState(LoginStatusState value) {
    _$loginStatusStateAtom.reportWrite(value, super.loginStatusState, () {
      super.loginStatusState = value;
    });
  }

  late final _$actionsAtom =
      Atom(name: '_LoginStore.actions', context: context);

  @override
  LoginActions? get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(LoginActions? value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_LoginStore.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$_LoginStoreActionController =
      ActionController(name: '_LoginStore', context: context);

  @override
  void updateEmail(String? value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.updateEmail');
    try {
      return super.updateEmail(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatePassword(String? value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.updatePassword');
    try {
      return super.updatePassword(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailState: ${emailState},
passwordState: ${passwordState},
loginStatusState: ${loginStatusState},
actions: ${actions},
canLogin: ${canLogin},
state: ${state}
    ''';
  }
}
