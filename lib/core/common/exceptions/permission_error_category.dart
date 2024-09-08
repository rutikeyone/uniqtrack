part of 'exceptions.dart';

@immutable
@freezed
class PermissionErrorCategory with _$PermissionErrorCategory {
  const PermissionErrorCategory._();

  const factory PermissionErrorCategory.denied() =
      _PermissionDeniedErrorCategory;

  const factory PermissionErrorCategory.permanentlyDenied() =
      _PermissionPermanentlyDenied;

  AppStrings header() {
    return const AppStrings.error();
  }

  AppStrings body() {
    return when(
      denied: () => AppStrings.noPermissionToPerform(),
      permanentlyDenied: () => AppStrings.noPermissionToPerform(),
    );
  }
}
