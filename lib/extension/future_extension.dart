///!! There is a test code inside the test folder.
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

/// [TR] Asenkron işlemlerde hata yakalamayı kolaylaştıran yardımcı fonksiyon.
/// [EN] A helper function to simplify error handling in asynchronous operations.

Future<Result<R>> asyncTryCatch<R>(Future<R> future) async {
  try {
    return Result(data: await future);
  } catch (e, stackTrace) {
    return Result(error: e, stackTrace: stackTrace);
  }
}

/// [TR] Future sınıfına asenkron hata yönetimi ekleyen extension.
/// [EN] An extension that adds asynchronous error handling to the Future class.

extension FutureExtension<R> on Future<R> {
  Future<Result<R>> asyncTryCatch() async {
    try {
      return Result(data: await this);
    } catch (e, stackTrace) {
      return Result(error: e, stackTrace: stackTrace);
    }
  }
}
