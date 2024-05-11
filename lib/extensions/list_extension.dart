part of extensions;

extension EmptyOnError<E> on Future<List<Iterable<E>>> {
  Future<List<Iterable<E>>> emptyOnError() => catchError(
        List<Iterable<E>>.empty,
      );
}

extension IterableWithIndex<T> on Iterable<T> {
  Iterable<T> sortByAsc<TSelected extends Comparable<TSelected>>(
          TSelected Function(T) selector) =>
      toList()..sort((a, b) => selector(a).compareTo(selector(b)));

  Iterable<T> sortByDesc<TSelected extends Comparable<TSelected>>(
          TSelected Function(T) selector) =>
      toList()..sort((a, b) => selector(b).compareTo(selector(a)));

  Iterable<E> mapWithIndex<E>(E Function(int index, T value) f) {
    return Iterable.generate(length).map((i) => f(i, elementAt(i)));
  }

  // returns only distinct elements
  Iterable<T> distinctBy(Object Function(T e) getCompareValue) {
    var result = <T>[];
    forEach(
      (element) {
        if (!result.any(
          (x) => getCompareValue(x) == getCompareValue(element),
        )) {
          result.add(element);
        }
      },
    );
    return result;
  }

  T get getRandomElement {
    final random = Random();
    int index = random.nextInt(length);
    return elementAt(index);
  }
}
