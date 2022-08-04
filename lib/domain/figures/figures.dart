part of '../amenities.dart';

abstract class FigureAmenity {
  static final circle = circleAmenityImplStateProvider;
  static final rectangle = rectangleAmenityImplStateProvider;
  static final square = squareAmenityImplStateProvider;

  Color get color;

  Size get size;

  void onColorChanged(Color color);

  void onSizeChanged(Size size);
}
