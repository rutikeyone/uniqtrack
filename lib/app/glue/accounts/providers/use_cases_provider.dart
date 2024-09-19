// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
part of 'providers.dart';

@riverpod
UserChangesUseCase userChangesUseCase(UserChangesUseCaseRef ref) {
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);
  final userMapper = ref.watch(userMapperProvider);

  return UserChangesUseCaseImpl(
    accountsDataRepository: accountsDataRepository,
    userMapper: userMapper,
  );
}

@riverpod
AuthStateChangesUseCase authStateChangesUseCase(
    AuthStateChangesUseCaseRef ref) {
  final authStateNotifier = ref.watch(authStateNotifierProvider.notifier);

  return AuthStateChangesUseCaseImpl(authStateNotifier: authStateNotifier);
}