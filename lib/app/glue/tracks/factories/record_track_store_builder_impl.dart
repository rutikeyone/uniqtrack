import 'package:flutter/material.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/record_track_store.dart';

class RecordTrackStoreBuilderImpl implements RecordTrackStoreBuilder {
  final StoreFactory _storeFactory;

  const RecordTrackStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  RecordTrackStore create({
    required BuildContext context,
    required Track? track,
    required DetailsMode? mode,
  }) {
    return _storeFactory.createRecordTrackStore(
      track: track,
      mode: mode,
    );
  }
}
