part of 'register_provider.dart';

@Riverpod(dependencies: [storeFactory])
RegisterStoreBuilder registerStoreBuilder(RegisterStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);
  return RegisterStoreBuilderImpl(storeFactory);
}
