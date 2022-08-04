import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

part 'circle.dart';
part 'square.dart';
part 'rectangle.dart';

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
    final randomValue1 = Random().nextInt(99);
    final randomValue2 = Random().nextInt(99);
    final randomValue3 = Random().nextInt(99);

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
    return GestureDetector(
      onTap: () {
        onColorUpdate?.call(_randomColorGenrator());
      },
      child: figure,
    );
    // return InteractiveViewer(
    //   constrained: false,
    //   onInteractionUpdate: (details) {
    //     onSizeUpdate?.call(Size(details.horizontalScale * 100, details.verticalScale * 100));
    //   },
    //   boundaryMargin: const EdgeInsets.all(20.0),
    //   maxScale: 6,
    //   minScale: 0.3,
    //   child: GestureDetector(
    //     onTap: () {
    //       onColorUpdate?.call(_randomColorGenrator());
    //     },
    //     child: figure,
    //   ),
    // );
  }
}
