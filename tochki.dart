import 'dart:math';

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.origin() {
    return Point(0, 0, 0);
  }

  factory Point.unit() {
    return Point(1, 1, 1);
  }

  // Factory-конструктор для создания единичного вектора в направлении заданной точки
  factory Point.unitVector(Point point) {
    final length = point.distanceTo(Point.origin());
    return Point(point.x / length, point.y / length, point.z / length);
  }
