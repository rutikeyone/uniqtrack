import 'package:uniqtrack/features/forgot_password/presentation/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/login/presentation%20/stores/login_store.dart';
import 'package:uniqtrack/features/register/presentation/stores/register_store.dart';

abstract interface class StoreFactory {
  RegisterStore createRegisterStore();

  LoginStore createLoginStore();

  ForgotPasswordStore createForgotPasswordStore(String? email);
}
