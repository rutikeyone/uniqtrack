part of 'providers.dart';

@Riverpod(dependencies: [storeFactory])
RegisterStoreBuilder registerStoreBuilder(RegisterStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);
  return RegisterStoreBuilderImpl(storeFactory);
}

@Riverpod(dependencies: [storeFactory])
LoginStoreBuilder loginStoreBuilder(LoginStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return LoginStoreBuilderImpl(storeFactory: storeFactory);
}

@Riverpod(dependencies: [storeFactory])
ForgotPasswordStoreBuilder forgotPasswordStore(ForgotPasswordStoreRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return ForgotPasswordStoreBuilderImpl(storeFactory: storeFactory);
}
