part of '../../app_extensions.dart';

enum CWThemeType { dark, light }

class CWThemeSetting extends CWAppSetting<AutoDisposeStateNotifierProvider<CWThemeStateNotifier, CWThemeState>, CWThemeType> {
  CWThemeSetting._();

  @override
  AutoDisposeStateNotifierProvider<CWThemeStateNotifier, CWThemeState> get current => _themeProvider;

  @override
  void switchTo(CWThemeType type) {
    // CWAppX.currentContext?.read(_themeProvider.notifier).switchTo(type);
    print(CWAppX.currentContext);
  }
}
