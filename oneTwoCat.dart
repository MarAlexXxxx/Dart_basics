/*
Есть коллекция строк вида "one, two, three, cat, dog" или любого другого. 
Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке. 
Однако цифры встречаются в виде английских слов от zero до nine. 
Например, в результате строки "one, two, zero, zero" мы получим следующий результат: [1, 2, 0]. 
Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
*/

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
