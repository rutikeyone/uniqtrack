import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/glue/register/mappers/file_mapper.dart';

part 'file_mapper_provider.g.dart';

@riverpod
FileMapper fileMapper(FileMapperRef ref) {
  return FileMapperImpl();
}