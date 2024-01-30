class WordCounter {
  // Метод для подсчета вхождений слов в коллекции
  static Map<String, int> countWords(List<String> words) {
    Map<String, int> wordCountMap = {};

    for (String word in words) {
      // Если слово уже есть в Map, увеличиваем счетчик
      wordCountMap[word] = (wordCountMap[word] ?? 0) + 1;
    }

    return wordCountMap;
  }
}
