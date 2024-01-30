extension RootExtension on num {
  double nthRoot(int n) {
    if (this < 0 && n % 2 == 0) {
      throw ArgumentError('Cannot calculate even root of a negative number');
    }

    if (this == 0) {
      return 0.0;
    }

    double x0 = this.abs().toDouble();
    double x1 = (1 / n) * ((n - 1) * x0 + this / _nthPower(x0, n - 1));

    while ((x1 - x0).abs() >= 1e-10) {
      x0 = x1;
      x1 = (1 / n) * ((n - 1) * x0 + this / _nthPower(x0, n - 1));
    }

    if (this < 0) {
      x1 = -x1;
    }

    return x1;
  }

  double _nthPower(double base, int exponent) {
    double result = 1.0;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}

void main() {
  try {
    double result = 27.nthRoot(3);
    print('Кубический корень из 27: $result');

    result = 16.nthRoot(4);
    print('Четвертый корень из 16: $result');

    // Попытка извлечь четвертый корень из отрицательного числа (бросит исключение)
    result = (-16).nthRoot(4);
  } catch (e) {
    print('Ошибка: $e');
  }
}
