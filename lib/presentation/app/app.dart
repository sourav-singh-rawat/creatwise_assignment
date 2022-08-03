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
      navigatorKey: CWAppX.router.navigatorKey,
      debugShowCheckedModeBanner: false,
      color: currentTheme.colors.primary,
      // theme: ThemeData(
      // brightness: currentTheme.type == CWThemeType.dark ? Brightness.dark : Brightness.light,
      // scaffoldBackgroundColor: currentTheme.colors.primary,
      // primaryColor: currentTheme.colors.primary,
      // bottomNavigationBarTheme: Theme.of(context).bottomNavigationBarTheme.copyWith(
      //     // sets the background color of the `BottomNavigationBar`
      //     canvasColor: Colors.green,
      //     // sets the active color of the `BottomNavigationBar` if `Brightness` is light
      //     primaryColor: Colors.red,
      //     textTheme: Theme.of(context)
      //         .textTheme
      //         .copyWith(caption: new TextStyle(color: Colors.yellow))),
      // ),
      home: const CWBottomNavigator(),
    );
  }
}
