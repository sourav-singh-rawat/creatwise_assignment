part of '../../../../app_extensions.dart';

abstract class CWThemeColors {
  factory CWThemeColors.yellow() => _CWThemeColorsYellowImpl();

  factory CWThemeColors.blue() => _CWThemeColorsBlueImpl();

  Color get primary;

  Color get secoundary;
}
