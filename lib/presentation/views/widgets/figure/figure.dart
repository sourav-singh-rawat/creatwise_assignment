import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'circle.dart';
part 'rectangle.dart';
part 'square.dart';

class FigureModifier extends ConsumerWidget {
  final Widget figure;
  final Function(Size size)? onSizeUpdate;
  final Function(Color color)? onColorUpdate;
  const FigureModifier({
    Key? key,
    required this.figure,
    this.onColorUpdate,
    this.onSizeUpdate,
  }) : super(key: key);

  Color _randomColorGenrator() {
    final randomValue1 = Random().nextInt(255);
    final randomValue2 = Random().nextInt(255);
    final randomValue3 = Random().nextInt(255);

    final genratedColor = Color.fromRGBO(
      randomValue1,
      randomValue2,
      randomValue3,
      1,
    );

    return genratedColor;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InteractiveViewer(
      onInteractionUpdate: (details) {
        onSizeUpdate?.call(
          Size(details.horizontalScale * 100, details.verticalScale * 100),
        );
      },
      child: GestureDetector(
        onTap: () {
          onColorUpdate?.call(_randomColorGenrator());
        },
        child: figure,
      ),
    );
  }
}
