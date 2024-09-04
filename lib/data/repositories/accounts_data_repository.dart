import 'package:uniqtrack/data/repositories/accounts/parameters/register_parameters.dart';

abstract interface class AccountsDataRepository {
  Future<void> register(RegisterParameters parameters);
}
