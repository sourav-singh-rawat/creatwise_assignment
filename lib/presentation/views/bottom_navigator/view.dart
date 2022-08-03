import 'package:creatwise_assignment/presentation/app/app_extensions/app_extensions.dart';
import 'package:creatwise_assignment/presentation/app/core_widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part './controller.dart';

class CWBottomNavigator extends ConsumerWidget {
  const CWBottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(CWAppX.theme.current);
    final state = ref.watch(_vsProvider);
    final stateController = ref.read(_vsProvider.notifier);

    return CWSacffold(
      // backgroundColor: currentTheme.colors.secoundary,
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.ac_unit),
          onPressed: () {
            switch (currentTheme.type) {
              case CWThemeType.dark:
                CWAppX.theme.switchTo(CWThemeType.light);
                break;
              case CWThemeType.light:
                CWAppX.theme.switchTo(CWThemeType.dark);
                break;
            }
          },
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            // canvasColor: currentTheme.colors.secoundary,
            ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'Screen 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.square),
              label: 'Screen 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rectangle),
              label: 'Screen 3',
            ),
          ],
          currentIndex: state.currentIndex,
          onTap: stateController.onIndexChanged,
          selectedItemColor: currentTheme.colors.secoundary,
          // unselectedItemColor: currentTheme.colors.secoundary,
        ),
      ),
    );
  }
}
