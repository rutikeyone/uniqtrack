import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/app_state/auth/sign_out_use_case_impl.dart';
import 'package:uniqtrack/data/accounts/providers/accounts_provider.dart';

part 'sign_out_use_case_provider.g.dart';

@riverpod
SignOutUseCaseImpl signOutUseCase(SignOutUseCaseRef ref) {
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);

  return SignOutUseCaseImpl(accountsDataRepository: accountsDataRepository);
}
