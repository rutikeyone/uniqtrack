import 'package:flutter/material.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/login/presentation%20/stores/login_store.dart';

class LoginStoreBuilderImpl implements LoginStoreBuilder {
  final StoreFactory _storeFactory;

  const LoginStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  LoginStore create(BuildContext context) {
    return _storeFactory.createLoginStore();
  }
}
