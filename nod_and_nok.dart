class MathUtils {
  // Метод для вычисления НОДа (наибольшего общего делителя)
  static int gcd(int a, int b) {
    while (b != 0) {
      final int temp = b;  // Сохраняем значение b во временной переменной temp
      b = a % b;           // b теперь становится остатком от деления a на b
      a = temp;            // a теперь принимает предыдущее значение b
    }
    return a.abs();        // Возвращаем абсолютное значение a (НОД)
  }

  // Метод для вычисления НОКа (наименьшего общего кратного)
  static int lcm(int a, int b) {
    return (a * b).abs() ~/ gcd(a, b);  // Возвращаем НОК, используя НОД
  }

  // Метод для разложения числа на простые множители
  static List<int> primeFactors(int number) {
    List<int> factors = [];  // Создаем пустой список для хранения множителей

    for (int i = 2; i <= number; i++) {
      while (number % i == 0) {
        factors.add(i);       // Добавляем i в список множителей
        number = number ~/ i;  // Делим число на i до тех пор, пока делится
      }
    }

    return factors;  // Возвращаем список простых множителей
  }
}

void main() {
  int num1 = 36;
  int num2 = 48;

  // Вычисление НОДа и НОКа
  int gcdResult = MathUtils.gcd(num1, num2);
  int lcmResult = MathUtils.lcm(num1, num2);

  print('НОД($num1, $num2) = $gcdResult');
  print('НОК($num1, $num2) = $lcmResult');

  // Разложение числа на простые множители
  int numberToFactorize = 72;
  List<int> primeFactorsList = MathUtils.primeFactors(numberToFactorize);

  print('Простые множители числа $numberToFactorize: $primeFactorsList');
}
