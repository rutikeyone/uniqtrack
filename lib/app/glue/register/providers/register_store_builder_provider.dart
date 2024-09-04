import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/factories/stores/store_factory_impl.dart';
import 'package:uniqtrack/features/register/presentation/store/register_store.dart';

part 'register_store_builder_provider.g.dart';

@riverpod
RegisterStoreBuilder registerStoreBuilder(RegisterStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);
  return RegisterStoreBuilderImpl(storeFactory);
}

class RegisterStoreBuilderImpl implements RegisterStoreBuilder {
  final StoreFactory _factory;

  const RegisterStoreBuilderImpl(this._factory);

  @override
  RegisterStore create() {
    return _factory.createRegisterStore();
  }
}
