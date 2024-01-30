class NumberExtractor {
  // Метод для извлечения чисел из строки
  static List<num> extractNumbers(String input) {
    List<num> numbers = [];

    // Разбиваем строку на слова
    List<String> words = input.split(' ');

    // Перебираем каждое слово
    for (String word in words) {
      // Пытаемся преобразовать слово в число
      try {
        num number = num.parse(word);
        numbers.add(number);
      } catch (e) {
        // Если не удалось преобразовать, игнорируем и идем дальше
      }
    }

    return numbers;
  }