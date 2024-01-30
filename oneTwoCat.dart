class DigitExtractor {
  static List<int> extractUniqueDigits(String input) {
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

    List<String> words =
        input.split(',').map((word) => word.trim().toLowerCase()).toList();

    Set<int> uniqueDigits = words
        .where((word) => englishWords.containsKey(word))
        .map((word) => englishWords[word]!)
        .toSet();

    return uniqueDigits.toList();
  }
}

void main() {
  String inputString = "one, two, zero, zero, five";

  // Извлекаем уникальные цифры из строки
  List<int> extractedDigits = DigitExtractor.extractUniqueDigits(inputString);

  // Выводим результат
  print('Уникальные цифры: $extractedDigits');
}
