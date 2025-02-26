/// [TR] Asenkron işlemlerde sonucu ve hatayı birlikte saklayan bir sınıf.
/// [EN] A Class that holds the result data and error & stacktrase together in async operation
class Result<T> {
  final T? data;
  final Object? error;
  final StackTrace? stackTrace;

  Result({this.data, this.error, this.stackTrace});

  /// [TR] İşlemin başarılı olup olmadığını döndürür.
  /// [EN] Returns whether the operation was successful.
  bool get isSuccess => error == null;
}
