class BinaryConverter {
  // Метод для преобразования целого числа из десятичной системы в двоичную
  static String decimalToBinary(int decimal) {
    if (decimal == 0) {
      return '0';
    }

    String binary = '';
    while (decimal > 0) {
      binary = (decimal % 2).toString() + binary;
      decimal ~/= 2;
    }

    return binary;
  }
