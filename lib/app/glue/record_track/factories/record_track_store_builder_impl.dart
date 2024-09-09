import 'package:flutter/material.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/record_track_store.dart';

class RecordTrackStoreBuilderImpl implements RecordTrackStoreBuilder {
  final StoreFactory _storeFactory;

  const RecordTrackStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  RecordTrackStore create(BuildContext context) {
    return _storeFactory.createRecordTrackStore();
  }
}
