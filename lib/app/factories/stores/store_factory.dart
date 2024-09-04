import 'package:uniqtrack/features/register/presentation/store/register_store.dart';

abstract interface class StoreFactory {
  RegisterStore createRegisterStore();
}
