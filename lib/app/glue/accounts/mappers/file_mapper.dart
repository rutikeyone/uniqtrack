import 'package:uniqtrack/data/images/models/models.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

abstract interface class FileMapper {
  File toFile(FileModel model);

  FileModel toFileModel(File file);
}

class FileMapperImpl implements FileMapper {
  @override
  File toFile(FileModel model) {
    return File(
      name: model.name,
      bytes: model.bytes,
    );
  }

  @override
  FileModel toFileModel(File file) {
    return FileModel(
      name: file.name,
      bytes: file.bytes,
    );
  }
}
