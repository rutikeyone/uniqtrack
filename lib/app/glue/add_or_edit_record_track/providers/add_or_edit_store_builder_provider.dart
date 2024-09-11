import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory_impl.dart';
import 'package:uniqtrack/app/glue/add_or_edit_record_track/factories/add_or_edit_store_builder_impl.dart';
import 'package:uniqtrack/features/add_or_edit_record_track/presentation/stores/add_or_edit_record_track_store.dart';

part 'add_or_edit_store_builder_provider.g.dart';

@Riverpod(dependencies: [storeFactory])
AddOrEditRecordStoreBuilder addOrEditRecordStoreBuilder(AddOrEditRecordStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return AddOrEditStoreBuilderImpl(storeFactory: storeFactory);
}