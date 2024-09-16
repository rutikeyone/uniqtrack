import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/error_handler/impl/app_error_handler_impl.dart';
import 'package:uniqtrack/data/accounts/providers/providers.dart';
import 'package:uniqtrack/data/tracks/repositories/tracks_data_repository_impl.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';

part 'providers.g.dart';

@riverpod
TracksDataRepository tracksDataRepository(TracksDataRepositoryRef ref) {
  final firebaseFireStore = ref.watch(firebaseFireStoreProvider);
  final appErrorHandler = ref.watch(appErrorHandlerProvider);

  final firebaseAuth = ref.watch(firebaseAuthProvider);

  return TracksDataRepositoryImpl(
    firebaseFireStore: firebaseFireStore,
    appErrorHandler: appErrorHandler,
    firebaseAuth: firebaseAuth,
  );
}
