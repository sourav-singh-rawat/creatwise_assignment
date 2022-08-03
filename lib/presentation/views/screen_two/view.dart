import 'package:creatwise_assignment/presentation/app/core_widgets/scaffold.dart';
import 'package:creatwise_assignment/presentation/views/widgets/circle.dart';
import 'package:creatwise_assignment/presentation/views/widgets/rectangle.dart';
import 'package:creatwise_assignment/presentation/views/widgets/square.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTwo extends ConsumerWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CWSacffold(
      body: ListView(
        children: [
          Expanded(child: RectangleFigure()),
          Expanded(child: CircleFigure()),
          Expanded(child: SquareFigure()),
        ],
      ),
    );
  }
}
