import 'package:flutter_mastering_types/extension/future_extension.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ///

  group('asyncTryCatch', () {
    test('Success Result should be returned ', () async {
      Future<String> succesfulFuture() async {
        return 'Success';
      }

      final result = await asyncTryCatch(succesfulFuture());

      expect(result.isSuccess, true);
      expect(result.data, 'Success');
      expect(result.error, isNull);
    });

    test('Error Result should be returned ', () async {
      Future<String> failureFuture() async {
        throw Exception('Testing error');
      }

      final result = await asyncTryCatch(failureFuture());

      expect(result.isSuccess, false);
      expect(result.data, isNull);
      expect(result.error, isNotNull);
      expect(result.error.toString(), contains('Testing error'));
      expect(result.stackTrace, isNotNull);
    });
  });
}
