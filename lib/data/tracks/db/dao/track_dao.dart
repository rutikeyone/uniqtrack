import 'package:drift/drift.dart';
import 'package:uniqtrack/data/app_database.dart';
import 'package:uniqtrack/data/tracks/db/tables/tracks.dart';

part 'track_dao.g.dart';

@DriftAccessor(tables: [Tracks])
class TracksDao extends DatabaseAccessor<AppDatabase> with _$TracksDaoMixin {
  TracksDao(AppDatabase db) : super(db);

  Future<int> insertTrack(TracksCompanion track) {
    return tracks.insertOnConflictUpdate(track);
  }

  Future<Track?> getTrack() async {
    final lastTrack = await (select(tracks)
          ..orderBy([
            (item) => OrderingTerm(
                expression: item.id, mode: OrderingMode.desc)
          ])
          ..limit(1))
        .getSingleOrNull();
    return lastTrack;
  }

  Future<void> deleteAllTracks() {
    return tracks.deleteAll();
  }
}
