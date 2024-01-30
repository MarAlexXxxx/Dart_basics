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
