import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/images/image_data_repository.dart';
import 'package:uniqtrack/data/images/image_data_source.dart';
import 'package:uniqtrack/data/images/models/models.dart';
import 'package:uuid/uuid.dart';

class ImageDataRepositoryImpl implements ImageDataRepository {
  final ImageDataSource _imageDataSource;
  final AppErrorHandler _appErrorHandler;
  final FirebaseStorage _firebaseStorage;
  final Uuid _uuid;

  static final _picturesPath = "pictures";

  const ImageDataRepositoryImpl({
    required ImageDataSource imageDataSource,
    required AppErrorHandler appErrorHandler,
    required FirebaseStorage firebaseStorage,
    required Uuid uuid,
  })  : _imageDataSource = imageDataSource,
        _appErrorHandler = appErrorHandler,
        _firebaseStorage = firebaseStorage,
        _uuid = uuid;

  @override
  Future<Either<AppError, PermissionResult<FileModel?>>> chooseImage() async {
    final result = await _appErrorHandler.handle(() {
      return _imageDataSource.chooseImage();
    });
    return result;
  }

  @override
  Future<Either<AppError, String>> downloadImage(Uint8List bytes) {
    return _appErrorHandler.handle(() async {
      final ref = _firebaseStorage.ref().child(_picturesPath);
      final childRef = ref.child(_uuid.v1());

      final uploadTask = childRef.putData(bytes);
      final snapshot = await uploadTask;
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return downloadUrl;
    });
  }
}
