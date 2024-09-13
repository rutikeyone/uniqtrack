import 'package:uniqtrack/features/accounts/domain/user_changes_use_case.dart';
import 'package:uniqtrack/app/glue/accounts/mappers/user_mapper.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

class UserChangesUseCaseImpl extends UserChangesUseCase {
  final AccountsDataRepository _accountsDataRepository;
  final UserMapper _userMapper;

  UserChangesUseCaseImpl({
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
