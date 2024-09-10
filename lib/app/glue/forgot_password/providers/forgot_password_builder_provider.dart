part of 'forgot_password_provider.dart';

@Riverpod(dependencies: [storeFactory])
ForgotPasswordStoreBuilder forgotPasswordStore(ForgotPasswordStoreRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return ForgotPasswordStoreBuilderImpl(storeFactory: storeFactory);
}
