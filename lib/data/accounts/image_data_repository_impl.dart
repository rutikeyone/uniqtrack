import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/data_sources/image_data_source.dart';
import 'package:uniqtrack/data/accounts/models/file_model.dart';
import 'package:uniqtrack/data/accounts/image_data_repository.dart';

class ImageDataRepositoryImpl implements ImageDataRepository {
  final ImageDataSource _imageDataSource;
  final AppErrorHandler _appErrorHandler;

  const ImageDataRepositoryImpl({
    required ImageDataSource imageDataSource,
    required AppErrorHandler appErrorHandler,
  })  : _imageDataSource = imageDataSource,
        _appErrorHandler = appErrorHandler;

  @override
  Future<Either<AppError, FileModel?>> chooseImage() async {
    final result = await _appErrorHandler.handle(() {
      return _imageDataSource.chooseImage();
    });
    return result;
  }
}
