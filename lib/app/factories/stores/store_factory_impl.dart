import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/app_state/domain/auth_state_changes_use_case.dart';
import 'package:uniqtrack/app/app_state/providers/auth_state_changes_use_case_provider.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/glue/forgot_password/providers/forgot_password_provider.dart';
import 'package:uniqtrack/app/glue/login/providers/login_provider.dart';
import 'package:uniqtrack/app/glue/record_track/providers/record_track_repository_provider.dart';
import 'package:uniqtrack/app/glue/register/providers/register_provider.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_permission_handler/app_permission_handler.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common_impl/app_location_handler_impl.dart';
import 'package:uniqtrack/core/common_impl/app_permission_handler_impl.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/features/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:uniqtrack/features/forgot_password/presentation/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/login/domain/repositories/login_repository.dart';
import 'package:uniqtrack/features/login/presentation%20/stores/login_store.dart';
import 'package:uniqtrack/features/record_track/domain/repositories/record_track_repository.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/record_track_store.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';
import 'package:uniqtrack/features/register/presentation/stores/register_store.dart';

part 'store_factory_impl.g.dart';

@Riverpod(
  dependencies: [recordTrackRepository, appLocationHandler],
)
StoreFactory storeFactory(StoreFactoryRef ref) {
  final commonUIDelegate = ref.watch(commonUIDelegateNotifierProvider.notifier);
  final registerRepository = ref.watch(registerRepositoryProvider);
  final loginRepository = ref.watch(loginRepositoryProvider);
  final forgotPasswordRepository = ref.watch(forgotPasswordRepositoryProvider);
  final authStateChangesUseCase = ref.watch(authStateChangesUseCaseProvider);
  final appPermissionHandler = ref.watch(appPermissionHandlerProvider);
  final recordTrackRepository = ref.watch(recordTrackRepositoryProvider);
  final appLocationHandler = ref.watch(appLocationHandlerProvider);

  return StoreFactoryImpl(
    registerRepository: registerRepository,
    commonUIDelegate: commonUIDelegate,
    loginRepository: loginRepository,
    authStateChangesUseCase: authStateChangesUseCase,
    forgotPasswordRepository: forgotPasswordRepository,
    appPermissionHandler: appPermissionHandler,
    recordTrackRepository: recordTrackRepository,
    appLocationHandler: appLocationHandler,
  );
}

class StoreFactoryImpl implements StoreFactory {
  final RegisterRepository _imageRepository;
  final LoginRepository _loginRepository;
  final CommonUIDelegate _commonUIDelegate;
  final ForgotPasswordRepository _forgotPasswordRepository;
  final AuthStateChangesUseCase _authStateChangesUseCase;
  final RecordTrackRepository _recordTrackRepository;
  final AppLocationHandler _appLocationHandler;

  const StoreFactoryImpl({
    required CommonUIDelegate commonUIDelegate,
    required RegisterRepository registerRepository,
    required LoginRepository loginRepository,
    required ForgotPasswordRepository forgotPasswordRepository,
    required AuthStateChangesUseCase authStateChangesUseCase,
    required AppPermissionHandler appPermissionHandler,
    required RecordTrackRepository recordTrackRepository,
    required AppLocationHandler appLocationHandler,
  })  : _imageRepository = registerRepository,
        _loginRepository = loginRepository,
        _forgotPasswordRepository = forgotPasswordRepository,
        _commonUIDelegate = commonUIDelegate,
        _authStateChangesUseCase = authStateChangesUseCase,
        _appLocationHandler = appLocationHandler,
        _recordTrackRepository = recordTrackRepository;

  @override
  RegisterStore createRegisterStore() {
    return RegisterStore(
      imageRepository: _imageRepository,
      commonUIDelegate: _commonUIDelegate,
      authStateChangesUseCase: _authStateChangesUseCase,
    );
  }

  @override
  LoginStore createLoginStore() {
    return LoginStore(
      loginRepository: _loginRepository,
      commonUIDelegate: _commonUIDelegate,
      authStateChangesUseCase: _authStateChangesUseCase,
    );
  }

  @override
  ForgotPasswordStore createForgotPasswordStore(String? email) {
    return ForgotPasswordStore(
      emailArgument: email,
      commonUIDelegate: _commonUIDelegate,
      forgotPasswordRepository: _forgotPasswordRepository,
    );
  }

  @override
  RecordTrackStore createRecordTrackStore() {
    return RecordTrackStore(
      recordTrackRepository: _recordTrackRepository,
      commonUIDelegate: _commonUIDelegate,
      appLocationHandler: _appLocationHandler,
    );
  }
}
