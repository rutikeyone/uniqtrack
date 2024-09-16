import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/glue/tracks/providers/providers.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

part 'providers.g.dart';

@riverpod
Stream<List<Track>> tracks(TracksRef ref) {
  final recordTrackRepository = ref.watch(recordTrackRepositoryProvider);

  return recordTrackRepository.listenTracks();
}
