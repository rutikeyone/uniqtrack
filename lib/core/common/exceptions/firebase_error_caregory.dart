part of 'exceptions.dart';

@immutable
@freezed
class FirebaseErrorCategory with _$FirebaseErrorCategory {
  const factory FirebaseErrorCategory.base() = _FirebaseBaseErrorCategory;

  const factory FirebaseErrorCategory.emailAlreadyInUse() =
      _FirebaseEmailAlreadyInUseErrorCategory;

  const factory FirebaseErrorCategory.invalidEmail() =
      _FirebaseInvalidEmailErrorCategory;

  const factory FirebaseErrorCategory.operationNotAllowed() =
      _FirebaseOperationNotAllowedErrorCategory;

  const factory FirebaseErrorCategory.weakPassword() =
      _FirebaseWeakPasswordErrorCategory;

  const factory FirebaseErrorCategory.tooManyRequests() =
      _FirebaseTooManyRequestsErrorCategory;

  const factory FirebaseErrorCategory.userTokenExpired() =
      _FirebaseUserTokenExpiredErrorCategory;

  const factory FirebaseErrorCategory.networkRequestFailed() =
      _FirebaseNetworkRequestsFailedErrorCategory;

  const factory FirebaseErrorCategory.userDisabled() =
      _FirebaseUserDisabledErrorCategory;

  const factory FirebaseErrorCategory.userNotFound() =
      _FirebaseUserNotFoundErrorCategory;

  const factory FirebaseErrorCategory.wrongPassword() =
      _FirebaseWrongPasswordErrorCategory;

  const factory FirebaseErrorCategory.invalidCredential() =
      _FirebaseInvalidCredentionErrorCategory;
}
