import 'package:creatwise_assignment/presentation/app/app_extensions/app_extensions.dart';
import 'package:creatwise_assignment/presentation/views/bottom_navigator/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CWApp extends ConsumerWidget {
  const CWApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(CWAppX.theme.current);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: currentTheme.colors.primary,
          iconTheme: IconThemeData(
            color: currentTheme.colors.secoundary,
          ),
        ),
        scaffoldBackgroundColor: currentTheme.colors.primary,
        iconTheme: IconThemeData(
          color: currentTheme.colors.secoundary,
        ),
        bottomNavigationBarTheme: Theme.of(context).bottomNavigationBarTheme.copyWith(
              backgroundColor: currentTheme.colors.primary,
              selectedItemColor: currentTheme.colors.secoundary,
            ),
      ),
      home: const CWBottomNavigator(),
    );
  }
}
