import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/images/models/models.dart';
import 'package:uniqtrack/features/tracks/domain/image_repository.dart';

class ImagesAdapterRepository implements ImageRepository {
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromCamera;
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromGallery;

  final Future<Either<AppError, String>> Function(Uint8List) _downloadImage;

  const ImagesAdapterRepository({
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromCamera,
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromGallery,
    required Future<Either<AppError, String>> Function(Uint8List) downloadImage,
  })  : _chooseImageFromGallery = chooseImageFromGallery,
        _chooseImageFromCamera = chooseImageFromCamera,
        _downloadImage = downloadImage;

  @override
  Future<Either<AppError, Either<AppPermissionError, Uint8List?>>>
      chooseImageFromCamera() async {
    final chooseImageResult = await _chooseImageFromCamera.call();
    return chooseImageResult.fold(
      (error) => Left(error),
      (result) {
        return result.fold(
          (error) => Left(error),
          (fileModel) {
            return Right(Right(fileModel?.bytes));
          },
        );
      },
    );
  }

  @override
  Future<Either<AppError, Either<AppPermissionError, Uint8List?>>>
      chooseImageFromGallery() async {
    final chooseImageResult = await _chooseImageFromGallery.call();
    return chooseImageResult.fold(
      (error) => Left(error),
      (result) {
        return result.fold(
          (error) => Left(error),
          (fileModel) {
            return Right(Right(fileModel?.bytes));
          },
        );
      },
    );
  }

  @override
  Future<Either<AppError, String>> downloadImage(Uint8List bytes) {
    return _downloadImage.call(bytes);
  }
}
