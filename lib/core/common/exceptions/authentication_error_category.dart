part of 'exceptions.dart';

@immutable
@freezed
class AuthenticationErrorCategory with _$AuthenticationErrorCategory {
  const factory AuthenticationErrorCategory.notAuth() =
      _NotAuthenticatedErrorCategory;
}
