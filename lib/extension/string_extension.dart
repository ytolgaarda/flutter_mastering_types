extension StringExtension on String {
  /// [TR] İlk harfi büyük yapar.
  /// [EN] Capitalizes the first letter of the string.
  String capitalizeFirst() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  /// [TR] String'i tersine çevirir.
  /// [EN] Reverses the string.
  String reverse() => split('').reversed.join('');

  /// [TR] Boşlukları kaldırır.
  /// [EN] Removes all whitespaces.
  String removeWhitespace() => replaceAll(' ', '');

  /// [TR] String'in başındaki ve sonundaki boşlukları temizler.
  /// [EN] Trims leading and trailing whitespace from the string.
  String trimCustom() => trim();

  /// [TR] String'in sayısal bir değer olup olmadığını kontrol eder.
  /// [EN] Checks if the string is a numeric value.
  bool isNumeric() => double.tryParse(this) != null;

  /// [TR] String'in belirli bir kelimeyi içerip içermediğini kontrol eder.
  /// [EN] Checks if the string contains a specific word.
  bool containsWord(String word) => contains(word);

  /// [TR] String'in uzunluğunun belirli bir değerden büyük olup olmadığını kontrol eder.
  /// [EN] Checks if the length of the string is greater than a specified length.
  bool isLengthGreaterThan(int length) => this.length > length;
}



/* 
void main() {
  String example = " ytolga ";

  print(example.capitalizeFirst());  /// " Ytolga "

  print(example.reverse());  /// "agloyt"

  print(example.removeWhitespace());  /// "ytolga"

  print(example.trimCustom());  /// "ytolga"

  print("123".isNumeric());  /// true
  print("abc".isNumeric());  /// false

  print(example.containsWord("ytolga"));  /// true
  print(example.containsWord("level"));  /// false

  print("ytolga".isLengthGreaterThan(3));  /// true
  print("SA".isLengthGreaterThan(3));  /// false
}

 */