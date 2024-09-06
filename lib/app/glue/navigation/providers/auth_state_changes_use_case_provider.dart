import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/glue/navigation/auth_state_changes_adapter_use_case.dart';
import 'package:uniqtrack/data/accounts/providers/accounts_provider.dart';
import 'package:uniqtrack/features/navigation/domain/auth_state_changes_use_case.dart';

part 'auth_state_changes_use_case_provider.g.dart';

@riverpod
AuthStateChangesUseCase authStateChangesUseCase(
    AuthStateChangesUseCaseRef ref) {
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);

  return AuthStateChangesAdapterUseCase(
    accountsDataRepository: accountsDataRepository,
  );
}
