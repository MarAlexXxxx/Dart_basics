import 'dart:math';

class Point {
  double x, y, z;

  // Конструктор для создания точки с заданными координатами
  Point(this.x, this.y, this.z);

  // Factory-конструктор для создания точки в начале координат
  factory Point.origin() {
    return Point(0, 0, 0);
  }
