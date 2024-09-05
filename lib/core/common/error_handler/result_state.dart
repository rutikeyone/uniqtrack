import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const ResultState._();

  const factory ResultState.idle() = _ResultIdleState<T>;

  const factory ResultState.loading() = ResultLoadingState<T>;

  const factory ResultState.data({
    required T data,
    required Response<dynamic> response,
  }) = ResultDataState<T>;

  const factory ResultState.error(AppError error) = ResultErrorState<T>;
}