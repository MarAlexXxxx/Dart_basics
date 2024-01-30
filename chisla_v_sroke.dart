class NumberExtractor {
  // Метод для извлечения чисел из строки
  static List<num> extractNumbers(String input) {
    List<num> numbers = [];  // Создаем пустой список для хранения чисел

    // Разбиваем строку на слова
    List<String> words = input.split(' ');

    // Перебираем каждое слово
    for (String word in words) {
      // Пытаемся преобразовать слово в число
      try {
        num number = num.parse(word);  // Преобразуем строку в число
        numbers.add(number);           // Добавляем число в список
      } catch (e) {
        // Если не удалось преобразовать, игнорируем и идем дальше
      }
    }

    return numbers;  // Возвращаем список извлеченных чисел
  }
}

void main() {
  String inputString = "Цена составляет 42.75 долларов, а количество - 10";

  // Извлекаем числа из строки
  List<num> extractedNumbers = NumberExtractor.extractNumbers(inputString);

  // Выводим результат
  print('Извлеченные числа: $extractedNumbers');
}
