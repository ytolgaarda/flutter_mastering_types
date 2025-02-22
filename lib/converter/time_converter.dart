import 'package:json_annotation/json_annotation.dart';

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
