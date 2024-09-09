import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/glue/record_track/providers/position_mapper_provider.dart';
import 'package:uniqtrack/app/glue/record_track/repositories/record_track_adapter_repository.dart';
import 'package:uniqtrack/core/common_impl/app_location_handler_impl.dart';
import 'package:uniqtrack/features/record_track/domain/repositories/record_track_repository.dart';

part 'record_track_repository_provider.g.dart';

@Riverpod(dependencies: [appLocationHandler, positionMapper])
RecordTrackRepository recordTrackRepository(RecordTrackRepositoryRef ref) {
  final appLocationHandler = ref.watch(appLocationHandlerProvider);
  final positionMapper = ref.watch(positionMapperProvider);

  return RecordTrackAdapterRepository(
    appLocationHandler: appLocationHandler,
    positionMapper: positionMapper,
  );
}
