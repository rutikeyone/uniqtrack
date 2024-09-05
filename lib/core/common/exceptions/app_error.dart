part of 'exceptions.dart';

@freezed
class AppError with _$AppError {
  bool get isCancelError => maybeWhen(
        network: (category) {
          return category.maybeMap(
            requestCancelled: (_) => true,
            orElse: () => false,
          );
        },
        orElse: () => false,
      );

  const AppError._();

  const factory AppError.base() = _AppBaseException;

  const factory AppError.input() = _AppInputException;

  const factory AppError.network({
    required NetworkErrorCategory category,
  }) = _AppNetworkException;

  AppStrings header() {
    return const AppStrings.error();
  }

  AppStrings body() {
    return const AppStrings.errorHasOccurred();
  }
}
