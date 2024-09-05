import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/glue/register/providers/register_provider.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common_impl/common_ui_delegate_impl.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';
import 'package:uniqtrack/features/register/presentation/store/register_store.dart';

part 'store_factory_impl.g.dart';

@riverpod
StoreFactory storeFactory(StoreFactoryRef ref) {
  final imageRepository = ref.watch(registerRepositoryProvider);
  final commonUIDelegate = ref.watch(commonUIDelegateProvider.notifier);

  return StoreFactoryImpl(
    imageRepository: imageRepository,
    commonUIDelegate: commonUIDelegate,
  );
}

class StoreFactoryImpl implements StoreFactory {
  final RegisterRepository _imageRepository;
  final CommonUIDelegate _commonUIDelegate;

  const StoreFactoryImpl({
    required RegisterRepository imageRepository,
    required CommonUIDelegate commonUIDelegate,
  })  : _imageRepository = imageRepository,
        _commonUIDelegate = commonUIDelegate;

  @override
  RegisterStore createRegisterStore() {
    return RegisterStore(
      imageRepository: _imageRepository,
      commonUIDelegate: _commonUIDelegate,
    );
  }

  @override
  CommonUIDelegate createCommonUIDelegate() {
    return CommonUIDelegateImpl();
  }
}
