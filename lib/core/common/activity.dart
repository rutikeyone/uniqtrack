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

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode => 0;

}