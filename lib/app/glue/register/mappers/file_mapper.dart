import 'package:uniqtrack/data/repositories/accounts/models/file_model.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';

abstract interface class FileMapper {
  File toFile(FileModel model);
}

class FileMapperImpl implements FileMapper {
  @override
  File toFile(FileModel model) {
    return File(
      name: model.name,
      bytes: model.bytes,
    );
  }
}
