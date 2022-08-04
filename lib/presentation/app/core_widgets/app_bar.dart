import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CWAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool? centerTitle;
  final double? elevation;
  final List<Widget>? actions;
  const CWAppBar({
    Key? key,
    this.title,
    this.centerTitle,
    this.elevation,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: AppBar(
        title: title,
        centerTitle: centerTitle,
        actions: actions,
        elevation: elevation,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
