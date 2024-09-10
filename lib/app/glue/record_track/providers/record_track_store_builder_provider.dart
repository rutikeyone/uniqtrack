import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory_impl.dart';
import 'package:uniqtrack/app/glue/record_track/factories/record_track_store_builder_impl.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/record_track_store.dart';

part 'record_track_store_builder_provider.g.dart';

@Riverpod(dependencies: [storeFactory])
RecordTrackStoreBuilder recordTrackStoreBuilder(
    RecordTrackStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return RecordTrackStoreBuilderImpl(
    storeFactory: storeFactory,
  );
}
