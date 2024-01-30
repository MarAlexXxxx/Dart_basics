class WordCounter {
  static Map<String, int> countWords(List<String> words) {
    Map<String, int> wordCountMap = {};  // Создаем пустой Map для хранения подсчета слов

    for (String word in words) {
      wordCountMap[word] = (wordCountMap[word] ?? 0) + 1;
    }

    return wordCountMap;  // Возвращаем Map с количеством вхождений каждого слова
  }
}

void main() {
  List<String> wordCollection = [
    "apple",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple"
  ];

  // Подсчитываем вхождения слов в коллекции
  Map<String, int> wordCountMap = WordCounter.countWords(wordCollection);

  print('Количество вхождений слов в коллекции: $wordCountMap');
}