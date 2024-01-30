class MathUtils {
  // Метод для вычисления НОДа (наибольшего общего делителя)
  static int gcd(int a, int b) {
    while (b != 0) {
      final int temp = b;  // Сохраняем значение b во временной переменной temp
      b = a % b;           // b теперь становится остатком от деления a на b
     