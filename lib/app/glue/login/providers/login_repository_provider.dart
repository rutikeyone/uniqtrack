part of 'login_provider.dart';

@riverpod
LoginRepository loginRepository(LoginRepositoryRef ref) {
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);

  return LoginAdapterRepository(accountsDataRepository: accountsDataRepository);
}
