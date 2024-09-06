import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/login/presentation%20/providers/login_store.dart';

class LoginStoreBuilderImpl implements LoginStoreBuilder {
  final StoreFactory _storeFactory;

  const LoginStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  LoginStore create() {
    return _storeFactory.createLoginStore();
  }
}
