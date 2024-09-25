import 'dart:core';


extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }

  E? firstWhereOrNull(bool Function(E) test) {
    for (E element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  int? indexWhereOrNull(bool Function(E) test) {
    for (final (index, item) in this.indexed) {
      if (test(item)) return index;

    }
    return null;
  }
}