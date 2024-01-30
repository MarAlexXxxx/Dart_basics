import 'dart:math';

class Point {
  double x, y, z;

  // Конструктор для создания точки с заданными координатами
  Point(this.x, this.y, this.z);

  // Factory-конструктор для создания точки в начале координат
  factory Point.origin() {
    return Point(0, 0, 0);
  }

  // Factory-конструктор для создания точки с заданными координатами [1, 1, 1]
  factory Point.unit() {
    return Point(1, 1, 1);
  }

  // Factory-конструктор для создания единичного вектора в направлении заданной точки
  factory Point.unitVector(Point point) {
    final length = point.distanceTo(Point.origin());
    return Point(point.x / length, point.y / length, point.z / length);
  }

  // Метод для вычисления расстояния между двумя точками
  double distanceTo(Point another) {
    final dx = x - another.x;
    final dy = y - another.y;
    final dz = z - another.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  // Метод для вычисления площади треугольника, образованного тремя точками
  double triangleArea(Point second, Point third) {
    final a = distanceTo(second);
    final b = distanceTo(third);
    final c = second.distanceTo(third);
    final s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }
}

void main() {
  Point pointA = Point(1, 2, 3);
  Point pointB = Point.origin();
  Point pointC = Point.unit();

  print(
      'Расстояние от точки A до начала координат: ${pointA.distanceTo(pointB)}');
  print('Площадь треугольника ABC: ${pointA.triangleArea(pointB, pointC)}');

  Point unitVector = Point.unitVector(Point(2, 2, 2));
  print('Единичный вектор в направлении [2, 2, 2]: $unitVector');
}
