import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory_impl.dart';
import 'package:uniqtrack/app/glue/login/factories/login_store_builder_impl.dart';
import 'package:uniqtrack/features/login/presentation%20/providers/login_store.dart';

part 'login_store_builder_provider.g.dart';

@riverpod
LoginStoreBuilder loginStoreBuilder(LoginStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return LoginStoreBuilderImpl(storeFactory: storeFactory);
}
