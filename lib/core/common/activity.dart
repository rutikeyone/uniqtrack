class Activity<T> {
  T? _value;

  Activity(T value) {
    _value = value;
  }

  T? get() {
    final tempValue = _value;
    _value = null;
    return tempValue;
  }
}