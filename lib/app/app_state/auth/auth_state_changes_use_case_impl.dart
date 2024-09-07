import 'package:uniqtrack/app/app_state/domain/auth_state_changes_use_case.dart';
import 'package:uniqtrack/app/app_state/domain/entities/user.dart';
import 'package:uniqtrack/app/app_state/domain/mappers/user_mapper.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';

class AuthStateChangesUseCaseImpl extends AuthStateChangesUseCase {
  final AccountsDataRepository _accountsDataRepository;
  final UserMapper _userMapper;

  AuthStateChangesUseCaseImpl({
    required AccountsDataRepository accountsDataRepository,
    required UserMapper userMapper,
  }) : _accountsDataRepository = accountsDataRepository,
      _userMapper = userMapper;

  @override
  Stream<User?> execute() {
    return _accountsDataRepository.authStateChanges().map((userModel) {
      final user = userModel != null ? _userMapper.toUser(userModel) : null;
      return user;
    });
  }
}
