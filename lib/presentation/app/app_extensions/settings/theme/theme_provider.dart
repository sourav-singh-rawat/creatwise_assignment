part of '../../app_extensions.dart';

final _themeProvider = StateNotifierProvider.autoDispose<CWThemeStateNotifier, CWThemeState>((ref) {
  return CWThemeStateNotifier();
});

class CWThemeState {
  final CWThemeType type;
  final CWThemeColors colors;
  //ADD MORE PROPS

  CWThemeState({
    required this.type,
    required this.colors,
  });

  CWThemeState.defaults()
      : this(
          type: CWThemeType.yellow,
          colors: CWThemeColors.yellow(),
        );

  CWThemeState copyWith({
    CWThemeType? type,
    CWThemeColors? colors,
  }) {
    return CWThemeState(
      type: type ?? this.type,
      colors: colors ?? this.colors,
    );
  }
}

class CWThemeStateNotifier extends StateNotifier<CWThemeState> {
  CWThemeStateNotifier([CWThemeState? initState]) : super(initState ?? CWThemeState.defaults());

  void switchTo(CWThemeType type) {
    state = CWThemeState.defaults().copyWith(
      type: type,
      colors: type == CWThemeType.yellow ? CWThemeColors.yellow() : CWThemeColors.blue(),
    );
  }
}
