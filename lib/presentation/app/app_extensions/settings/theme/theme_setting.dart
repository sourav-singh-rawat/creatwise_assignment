part of '../../app_extensions.dart';

enum CWThemeType { yellow, blue }

class CWThemeSetting extends CWAppSetting<AutoDisposeStateNotifierProvider<CWThemeStateNotifier, CWThemeState>, CWThemeType> {
  CWThemeSetting._();

  @override
  AutoDisposeStateNotifierProvider<CWThemeStateNotifier, CWThemeState> get current => _themeProvider;

  @override
  void switchTo(CWThemeType type) {
    CWAppX.globalProviderScope.read(_themeProvider.notifier).switchTo(type);
  }
}
