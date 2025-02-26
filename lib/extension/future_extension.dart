import '../models/result.dart';

///!! There is a test code inside the test folder.

/// [TR] Asenkron işlemlerde hata yakalamayı kolaylaştıran yardımcı fonksiyon.
/// [EN] A helper function to simplify error handling in asynchronous operations.
/// Example => var result = await asyncTryCatch(fetchData());

Future<Result<R>> asyncTryCatch<R>(Future<R> future) async {
  try {
    return Result(data: await future);
  } catch (e, stackTrace) {
    return Result(error: e, stackTrace: stackTrace);
  }
}

/// [TR] Future sınıfına asenkron hata yönetimi ekleyen extension.
/// [EN] An extension that adds asynchronous error handling to the Future class.
/// Example => var result = await fetchData().asyncTryCatch();

extension FutureExtension<R> on Future<R> {
  Future<Result<R>> asyncTryCatch() async {
    try {
      return Result(data: await this);
    } catch (e, stackTrace) {
      return Result(error: e, stackTrace: stackTrace);
    }
  }
}
