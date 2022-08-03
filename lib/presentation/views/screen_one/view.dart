import 'package:creatwise_assignment/presentation/app/core_widgets/scaffold.dart';
import 'package:creatwise_assignment/presentation/views/widgets/circle.dart';
import 'package:creatwise_assignment/presentation/views/widgets/rectangle.dart';
import 'package:creatwise_assignment/presentation/views/widgets/square.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part './controller.dart';

class ScreenOne extends ConsumerWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CWSacffold(
      body: ListView(
        children: [
          Expanded(child: CircleFigure()),
          Expanded(child: SquareFigure()),
          Expanded(child: const RectangleFigure()),
        ],
      ),
    );
  }
}
