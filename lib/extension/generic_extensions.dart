extension NullableOperations<T> on T? {
  /// [TR] Eğer bu değer null ise, defaultValue döndürülür.
  /// [EN] If this value is null, the defaultValue is returned.
  T orElse(T defaultValue) {
    return this ?? defaultValue;

    /// null durumunda defaultValue döndürülür.
  }
}

extension ListExtensions<T> on List<T> {
  /// [TR] Listeyi virgülle birleştirir ve bir String döndürür.
  /// [EN] Joins the list with commas and returns a String.
  String joinWithComma() {
    return join(', ');

    /// List elemanlarını virgülle birleştirir.
  }

  /// [TR] Listeyi ters çevirir ve yeni bir liste döndürür.
  /// [EN] Reverses the list and returns a new list.
  List<T> reverseList() {
    return List.from(reversed);

    /// Listeyi ters çevirir ve yeni bir liste döndürür.
  }
}

extension MapExtensions<K, V> on Map<K, V> {
  /// [TR] Anahtar mevcutsa değer güncellenir, yoksa yeni bir anahtar-değer çifti eklenir.
  /// [EN] If the key exists, the value is updated; if not, a new key-value pair is added.
  void updateOrAdd(K key, V value) {
    if (containsKey(key)) {
      this[key] = value;
    } else {
      this[key] = value;
    }
  }
}

extension IterableExtensions<T> on Iterable<T> {
  /// [TR] Filtreleme yaparak, verilen teste uyan elemanları döndürür.
  /// [EN] Filters and returns elements that match the given test.
  List<T> filter(bool Function(T) test) {
    return where(test).toList();

    /// Teste uyan elemanları döndürür.
  }

  /// [TR] Elemanları belirli büyüklüklerde gruplar.
  /// [EN] Groups elements into chunks of a given size.
  List<List<T>> groupBy(int size) {
    var result = <List<T>>[];
    for (var i = 0; i < length; i += size) {
      result.add(skip(i).take(size).toList());
    }
    return result;
  }
}
