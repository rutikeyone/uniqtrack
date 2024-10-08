import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/accounts/presentation/forgot_password/stores/forgot_password_store.dart';

class ForgotPasswordStoreBuilderImpl implements ForgotPasswordStoreBuilder {
  final StoreFactory _storeFactory;

  const ForgotPasswordStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  ForgotPasswordStore create(String? email) {
    return _storeFactory.createForgotPasswordStore(email);
  }
}
