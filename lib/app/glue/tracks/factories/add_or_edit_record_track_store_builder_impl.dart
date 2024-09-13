import 'package:flutter/src/widgets/framework.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/stores/add_or_edit_record_track_store.dart';

class AddOrEditRecordTrackStoreBuilderImpl
    implements AddOrEditRecordTrackStoreBuilder {
  final StoreFactory _storeFactory;

  const AddOrEditRecordTrackStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  AddOrEditRecordTrackStore create(BuildContext context) {
    return _storeFactory.createAddOrEditRecordTrackStore();
  }
}