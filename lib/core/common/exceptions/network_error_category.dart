part of 'exceptions.dart';

@immutable
@freezed
class NetworkErrorCategory with _$NetworkErrorCategory {
  const factory NetworkErrorCategory.connectTimeout() = _NetworkConnectTimeoutErrorCategory;
  const factory NetworkErrorCategory.sendTimeout() = _NetworkSendTimeoutErrorCategory;
  const factory NetworkErrorCategory.receiveTimeout() = _NetworkReceiveTimeoutErrorCategory;
  const factory NetworkErrorCategory.responseException() = _NetworkResponseExceptionErrorCategory;
  const factory NetworkErrorCategory.requestCancelled() = _NetworkRequestCancelledErrorCategory;
  const factory NetworkErrorCategory.notInternetConnection() = _NetworkNotInternetConnectionErrorCategory;
  const factory NetworkErrorCategory.badCertificate() = _NetworkBadCertificateErrorCategory;
  const factory NetworkErrorCategory.badResponse() = _NetworkBadResponseErrorCategory;
  const factory NetworkErrorCategory.base() = _NetworkBaseErrorCategory;
}