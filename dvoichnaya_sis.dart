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

  // Метод для преобразования целого числа из двоичной системы в десятичную
  static int binaryToDecimal(String binary) {
    int decimal = 0;
    int length = binary.length;

    for (int i = 0; i < length; i++) {
      int digit = int.parse(binary[length - 1 - i]);
      decimal += digit * (1 << i);
    }

    return decimal;
  }
}
