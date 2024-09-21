import 'package:flutter/src/widgets/framework.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/details_store.dart';

class DetailsStoreBuilderImpl implements DetailsStoreBuilder {
  final StoreFactory _storeFactory;

  const DetailsStoreBuilderImpl({
    required StoreFactory storeFactory,
  }) : _storeFactory = storeFactory;

  @override
  DetailsStore create({
    required BuildContext context,
    required String id,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
    required DetailsMode mode,
  }) {
    return _storeFactory.createDetailsStore(
      id: id,
      canDelete: canDelete,
      closeWhenRemoveFromFavourites: closeWhenRemoveFromFavourites,
      mode: mode,
    );
  }
}
