import 'package:flutter/material.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/accounts/presentation/register/stores/register_store.dart';

class RegisterStoreBuilderImpl implements RegisterStoreBuilder {
  final StoreFactory _factory;

  const RegisterStoreBuilderImpl(this._factory);

  @override
  RegisterStore create(BuildContext context) {
    return _factory.createRegisterStore();
  }
}