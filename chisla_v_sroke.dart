/*
Реализуйте метод, который принимает строку слов, разделённых пробелами. 
Задача - найти в данной строке числа и вернуть коллекцию num этих чисел
*/
class NumberExtractor {

  static List<num> extractNumbers(String input) {
    List<num> numbers = []; 

    List<String> words = input.split(' ');

    for (String word in words) {
      try {
        num number = num.parse(word);  // Преобразуем строку в число
        numbers.add(number);           // Добавляем число в список
      } catch (e) {
      }
    }

    return numbers;  // Возвращаем список извлеченных чисел
  }
}

void main() {
  String inputString = "Цена составляет 42.75 долларов, а количество - 10";

  List<num> extractedNumbers = NumberExtractor.extractNumbers(inputString);

  print('Извлеченные числа: $extractedNumbers');
}
