import 'package:json_annotation/json_annotation.dart';

// [TR] Tarih formatında gelen string verilerini DateTime nesnesine dönüştürür.
// [EN] This converter converts string formatted date values into a DateTime object.

class TimeConverter implements JsonConverter<DateTime?, String?> {
  const TimeConverter();
  @override
  DateTime? fromJson(String? json) {
    if (json != null) {
      return DateTime.tryParse(json);
    }
    return null;
  }

  @override
  String? toJson(DateTime? date) {
    if (date != null) {
      return date.toIso8601String();
    }
    return null;
  }
}
