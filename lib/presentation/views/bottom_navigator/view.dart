import 'package:creatwise_assignment/contants/constants.dart';
import 'package:creatwise_assignment/presentation/app/app_extensions/app_extensions.dart';
import 'package:creatwise_assignment/presentation/app/core_widgets/app_bar.dart';
import 'package:creatwise_assignment/presentation/app/core_widgets/scaffold.dart';
import 'package:creatwise_assignment/presentation/views/screen_one/view.dart';
import 'package:creatwise_assignment/presentation/views/screen_three/view.dart';
import 'package:creatwise_assignment/presentation/views/screen_two/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part './controller.dart';

const List<Widget> screens = [ScreenOne(), ScreenTwo(), ScreenThree()];

class CWBottomNavigator extends ConsumerWidget {
  const CWBottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(CWAppX.theme.current);

    final state = ref.watch(_vsProvider);
    final stateController = ref.read(_vsProvider.notifier);

    return SafeArea(
      child: CWScaffold(
        appBar: CWAppBar(
          title: Text(
            cwAppTitle,
            style: TextStyle(
              color: currentTheme.colors.secoundary,
            ),
          ),
          actions: [
            IconButton(
              icon: Transform.rotate(
                angle: 10,
                child: Icon(
                  currentTheme.type == CWThemeType.yellow ? Icons.sunny : Icons.nightlight_sharp,
                ),
              ),
              onPressed: stateController.onThemeChanged,
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: screens[state.currentIndex],
            ),
            Text(
              'Tap on shape to change color',
              style: TextStyle(
                color: currentTheme.colors.secoundary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
    );
  }
}
