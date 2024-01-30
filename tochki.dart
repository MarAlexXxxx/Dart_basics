import 'dart:math';

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.origin() {
    return Point(0, 0, 0);
  }

  // Factory-конструктор для создания точки с заданными координатами [1, 1, 1]
  factory Point.unit() {
    return Point(1, 1, 1);
  }
