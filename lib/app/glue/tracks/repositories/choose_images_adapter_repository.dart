import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/images/models/models.dart';
import 'package:uniqtrack/features/tracks/domain/repositories/choose_image_repository.dart';

class ChooseImagesAdapterRepository implements ChooseImageRepository {
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromCamera;
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromGallery;

  const ChooseImagesAdapterRepository({
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromCamera,
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromGallery,
  })  : _chooseImageFromGallery = chooseImageFromGallery,
        _chooseImageFromCamera = chooseImageFromCamera;

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
}
