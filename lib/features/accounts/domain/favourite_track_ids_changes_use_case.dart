import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';

class FavouriteTrackIdsChangesUseCase
    extends NoParamsStreamUsecase<List<String>> {
  final AccountsRepository _accountsRepository;

  FavouriteTrackIdsChangesUseCase({
    required AccountsRepository accountsRepository,
  }) : _accountsRepository = accountsRepository;

  @override
  Stream<List<String>> execute() {
    return _accountsRepository.watchUserFavouriteTracks().map((list) {
      return list.map((item) => item.trackId).nonNulls.toList();
    });
  }
}
