part of 'exceptions.dart';

@immutable
@freezed
class FirebaseErrorCategory with _$FirebaseErrorCategory {
  const factory FirebaseErrorCategory.base() = _FirebaseBaseErrorCategory;
  const factory FirebaseErrorCategory.emailAlreadyInUse() = _FirebaseEmailAlreadyInUseErrorCategory;
  const factory FirebaseErrorCategory.invalidEmail() = _FirebaseInvalidEmailErrorCategory;
  const factory FirebaseErrorCategory.operationNotAllowed() = _FirebaseOperationNotAllowedErrorCategory;
  const factory FirebaseErrorCategory.weakPassword() = _FirebaseWeakPasswordErrorCategory;
  const factory FirebaseErrorCategory.tooManyRequests() = _FirebaseTooManyRequestsErrorCategory;
  const factory FirebaseErrorCategory.userTokenExpired() = _FirebaseUserTokenExpiredErrorCategory;
  const factory FirebaseErrorCategory.networkRequestFailed() = _FirebaseNetworkRequestsFailedErrorCategory;
}