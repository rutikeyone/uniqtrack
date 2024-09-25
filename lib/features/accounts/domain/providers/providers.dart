import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/sign_out_use_case.dart';

part 'providers.g.dart';

@riverpod
SignOutUseCase signOutUseCase(SignOutUseCaseRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  return SignOutUseCase(accountsRepository: accountsRepository);
}
