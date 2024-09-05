import 'result_state.dart';

abstract interface class Logger {
  void stateLog<T>({
    required ResultState<T> resultState,
    Object? error,
    StackTrace? trace,
  });
}
