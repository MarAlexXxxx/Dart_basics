class BinaryConverter {
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

void main() {
  int decimalNumber = 42;

  // Преобразование из десятичной системы в двоичную
  String binaryRepresentation = BinaryConverter.decimalToBinary(decimalNumber);
  print('$decimalNumber в двоичной системе: $binaryRepresentation');

  // Преобразование из двоичной системы в десятичную
  String binaryNumber = '101010';
  int decimalResult = BinaryConverter.binaryToDecimal(binaryNumber);
  print('$binaryNumber в десятичной системе: $decimalResult');
}
