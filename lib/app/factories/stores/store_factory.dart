import 'package:uniqtrack/features/login/presentation%20/providers/login_store.dart';
import 'package:uniqtrack/features/register/presentation/store/register_store.dart';

abstract interface class StoreFactory {
  RegisterStore createRegisterStore();
  LoginStore createLoginStore();
}
