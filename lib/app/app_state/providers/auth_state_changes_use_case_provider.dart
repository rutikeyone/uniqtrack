import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/app_state/auth/auth_state_changes_use_case_impl.dart';
import 'package:uniqtrack/app/app_state/domain/auth_state_changes_use_case.dart';
import 'package:uniqtrack/app/app_state/providers/user_mapper_provider.dart';
import 'package:uniqtrack/data/accounts/providers/accounts_provider.dart';

part 'auth_state_changes_use_case_provider.g.dart';

@riverpod
AuthStateChangesUseCase authStateChangesUseCase(
    AuthStateChangesUseCaseRef ref) {
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);
  final userMapper = ref.watch(userMapperProvider);

  return AuthStateChangesUseCaseImpl(
    accountsDataRepository: accountsDataRepository,
    userMapper: userMapper,
  );
}
