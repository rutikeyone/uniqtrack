import 'package:flutter/src/widgets/framework.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/add_or_edit_record_track/presentation/stores/add_or_edit_record_track_store.dart';

class AddOrEditStoreBuilderImpl implements AddOrEditRecordStoreBuilder {
  final StoreFactory _storeFactory;

  const AddOrEditStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  AddOrEditRecordTrackStore create(BuildContext context) {
    return _storeFactory.createAddOrEditRecordTrackStore();
  }
}
