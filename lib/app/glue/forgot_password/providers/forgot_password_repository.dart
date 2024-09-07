part of 'forgot_password_provider.dart';

@riverpod
ForgotPasswordRepository forgotPasswordRepository(
    ForgotPasswordRepositoryRef ref) {
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);

  return ForgotPasswordAdapterRepository(
    accountsDataRepository: accountsDataRepository,
  );
}
