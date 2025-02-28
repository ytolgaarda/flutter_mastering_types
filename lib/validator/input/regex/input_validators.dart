import '../enum/input_type.dart';

/// [TR] InputValidators sınıfı, belirli bir türdeki input değerlerini doğrulamak için kullanılır.
/// [EN] The InputValidators class is used to validate input values of a specific type.

class InputValidators {
  static String? validate(
    String value,
    InputValidatorType type, {
    String? customPattern,
    String? customErrorMessage,
  }) {
    /// [TR] Geçerli pattern, türün patternine veya özel pattern parametresine göre belirlenir.
    /// [EN] The valid pattern is determined based on the type's pattern or a custom pattern parameter.

    String? pattern =
        type == InputValidatorType.custom ? customPattern : type.regex;
    if (pattern == null) return null;

    final regex = RegExp(pattern);

    /// [TR] Desene uyumluysa null döndürülür, aksi takdirde hata mesajı döndürülür.
    /// [EN] If the value matches the pattern, null is returned; otherwise, an error message is returned.

    return regex.hasMatch(value)
        ? null
        : (customErrorMessage ?? type.noMatchMessage);
  }
}
