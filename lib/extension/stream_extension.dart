import '../models/result.dart';

/// [TR] Stream içinde hata yakalamayı kolaylaştıran yardımcı fonksiyon.
/// [EN] A helper function to simplify error handling in a Stream.
Stream<Result<R>> streamTryCatch<R>(Stream<R> stream) async* {
  try {
    await for (var value in stream) {
      yield Result(data: value);
    }
  } catch (e, s) {
    yield Result(error: e, stackTrace: s);
  }
}

/// [TR] Stream sınıfına asenkron hata yönetimi ekleyen extensnio.
/// [EN] An extension that adds asynchronous error handling to the Stream class.
extension StreamExtension<R> on Stream<R> {
  Stream<Result<R>> streamTryCatch() async* {
    try {
      await for (var value in this) {
        yield Result(data: value);
      }
    } catch (e, stackTrace) {
      yield Result(error: e, stackTrace: stackTrace);
    }
  }
}
