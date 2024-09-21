part of 'providers.dart';

@Riverpod(dependencies: [storeFactory])
AddOrEditMemoryStoreBuilder addOrEditMemoryStoreBuilder(
    AddOrEditMemoryStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return AddOrEditMemoryBuilderImpl(storeFactory: storeFactory);
}

@Riverpod(dependencies: [storeFactory])
AddOrEditRecordTrackStoreBuilder addOrEditRecordStoreBuilder(
    AddOrEditRecordStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return AddOrEditRecordTrackStoreBuilderImpl(storeFactory: storeFactory);
}

@Riverpod(dependencies: [storeFactory])
PhotoViewerStoreBuilder photoViewerStoreBuilder(
    PhotoViewerStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return PhotoViewerStoreBuilderImpl(storeFactory: storeFactory);
}

@Riverpod(dependencies: [storeFactory])
RecordTrackStoreBuilder recordTrackStoreBuilder(
    RecordTrackStoreBuilderRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return RecordTrackStoreBuilderImpl(storeFactory: storeFactory);
}

@Riverpod(dependencies: [storeFactory])
DetailsStoreBuilder detailsStore(DetailsStoreRef ref) {
  final storeFactory = ref.watch(storeFactoryProvider);

  return DetailsStoreBuilderImpl(storeFactory: storeFactory);
}
