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
