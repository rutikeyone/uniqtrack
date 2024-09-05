part of 'register_provider.dart';

@riverpod
RegisterStoreBuilder registerStoreBuilder(RegisterStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);
  return RegisterStoreBuilderImpl(storeFactory);
}

