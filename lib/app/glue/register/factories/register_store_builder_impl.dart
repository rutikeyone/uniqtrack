import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/register/presentation/stores/register_store.dart';

class RegisterStoreBuilderImpl implements RegisterStoreBuilder {
  final StoreFactory _factory;

  const RegisterStoreBuilderImpl(this._factory);

  @override
  RegisterStore create() {
    return _factory.createRegisterStore();
  }
}