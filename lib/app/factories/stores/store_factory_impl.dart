import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/glue/register/providers/image_adapter_repository_provider.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';
import 'package:uniqtrack/features/register/presentation/store/register_store.dart';

part 'store_factory_impl.g.dart';

@riverpod
StoreFactory storeFactory(StoreFactoryRef ref) {
  final imageRepository = ref.watch(registerRepositoryProvider);
  return StoreFactoryImpl(imageRepository: imageRepository);
}

class StoreFactoryImpl implements StoreFactory {
  final RegisterRepository _imageRepository;

  const StoreFactoryImpl({
    required RegisterRepository imageRepository,
  }) : _imageRepository = imageRepository;

  @override
  RegisterStore createRegisterStore() {
    return RegisterStore(imageRepository: _imageRepository);
  }
}
