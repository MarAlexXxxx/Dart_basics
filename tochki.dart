/*
Реализуйте класс Point, который описывает точку в трёхмерном пространстве. 
У данного класса реализуйте метод distanceTo(Point another), 
который возвращает расстояние от данной точки до точки в параметре. 
По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве 
и возвращающий площадь треугольника, который образуют данные точки. 
Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, 
и ещё несколько на своё усмотрение (например, конструктор, 
возвращающий точку с координатами [1, 1, 1], которая определяет единичный вектор).
*/

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
