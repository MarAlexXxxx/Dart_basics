class DigitExtractor {
  static List<int> extractUniqueDigits(String input) {
    // Английские слова для цифр от zero до nine
    final englishWords = {
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9,
    };

    // Разбиваем строку на слова, удаляем лишние пробелы, приводим к нижнему регистру
    List<String> words =
        input.split(',').map((word) => word.trim().toLowerCase()).toList();

