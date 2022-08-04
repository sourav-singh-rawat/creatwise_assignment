import 'package:creatwise_assignment/domain/amenities.dart';
import 'package:creatwise_assignment/presentation/views/widgets/figure/figure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTwo extends ConsumerWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final circle = ref.watch(FigureAmenity.circle);
    final circleController = ref.read(FigureAmenity.circle.notifier);

    final square = ref.watch(FigureAmenity.square);
    final squareController = ref.read(FigureAmenity.square.notifier);

    final rectangle = ref.watch(FigureAmenity.rectangle);
    final rectangleController = ref.read(FigureAmenity.rectangle.notifier);

    return Column(
      children: [
        Expanded(
          child: FigureModifier(
            onSizeUpdate: rectangleController.onSizeChanged,
            onColorUpdate: rectangleController.onColorChanged,
            figure: RectangleFigure(
              color: rectangle.color,
              size: rectangle.size,
            ),
          ),
        ),
        const Divider(),
        Expanded(
          child: FigureModifier(
            onSizeUpdate: circleController.onSizeChanged,
            onColorUpdate: circleController.onColorChanged,
            figure: CircleFigure(
              color: circle.color,
              radius: circle.radius,
            ),
          ),
        ),
        const Divider(),
        Expanded(
          child: FigureModifier(
            onSizeUpdate: squareController.onSizeChanged,
            onColorUpdate: squareController.onColorChanged,
            figure: SquareFigure(
              color: square.color,
              size: square.size,
            ),
          ),
        ),
      ],
    );
  }
}
