part of '../../../../app_extensions.dart';

abstract class CWThemeColors {
  factory CWThemeColors.dark() => _CWThemeColorsDarkImpl();

  factory CWThemeColors.light() => _CWThemeColorsLightImpl();

  Color get primary;

  Color get secoundary;
}
