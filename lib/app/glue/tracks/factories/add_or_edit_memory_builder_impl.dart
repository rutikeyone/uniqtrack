import 'package:flutter/src/widgets/framework.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_edit_memory/stores/add_or_edit_memory_store.dart';

class AddOrEditMemoryBuilderImpl implements AddOrEditMemoryStoreBuilder {
  final StoreFactory _storeFactory;

  const AddOrEditMemoryBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  AddOrEditMemoryStore create(
    BuildContext context, {
    required Position? position,
  }) {
    return _storeFactory.createAddOrEditMemoryStore(position: position);
  }
}
