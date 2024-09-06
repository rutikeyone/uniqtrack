import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/glue/login/providers/login_provider.dart';
import 'package:uniqtrack/app/glue/register/providers/register_provider.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common_impl/common_ui_delegate_impl.dart';
import 'package:uniqtrack/features/login/domain/repositories/login_repository.dart';
import 'package:uniqtrack/features/login/presentation%20/providers/login_store.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';
import 'package:uniqtrack/features/register/presentation/store/register_store.dart';

part 'store_factory_impl.g.dart';

@riverpod
StoreFactory storeFactory(StoreFactoryRef ref) {
  final registerRepository = ref.watch(registerRepositoryProvider);
  final commonUIDelegate = ref.watch(commonUIDelegateProvider.notifier);
  final loginRepository = ref.watch(loginRepositoryProvider);

  return StoreFactoryImpl(
    registerRepository: registerRepository,
    commonUIDelegate: commonUIDelegate,
    loginRepository: loginRepository,
  );
}

class StoreFactoryImpl implements StoreFactory {
  final RegisterRepository _imageRepository;
  final LoginRepository _loginRepository;
  final CommonUIDelegate _commonUIDelegate;

  const StoreFactoryImpl({
    required RegisterRepository registerRepository,
    required LoginRepository loginRepository,
    required CommonUIDelegate commonUIDelegate,
  })  : _imageRepository = registerRepository,
        _loginRepository = loginRepository,
        _commonUIDelegate = commonUIDelegate;

  @override
  RegisterStore createRegisterStore() {
    return RegisterStore(
      imageRepository: _imageRepository,
      commonUIDelegate: _commonUIDelegate,
    );
  }

  @override
  LoginStore createLoginStore() {
    return LoginStore(
      loginRepository: _loginRepository,
      commonUIDelegate: _commonUIDelegate,
    );
  }
}
