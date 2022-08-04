import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CWSacffold extends ConsumerWidget {
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? body;
  final Color? backgroudColor;

  const CWSacffold({
    Key? key,
    this.appBar,
    this.bottomNavigationBar,
    this.body,
    this.backgroudColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: false,
    );
  }
}
