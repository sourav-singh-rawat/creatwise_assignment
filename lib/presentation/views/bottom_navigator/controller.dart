part of './view.dart';

final _vsProvider = StateNotifierProvider.autoDispose<_VSController, _ViewState>(
  (ref) {
    final stateController = _VSController();
    return stateController;
  },
);

class _ViewState {
  final int currentIndex;

  _ViewState({
    required this.currentIndex,
  });

  _ViewState.initState()
      : this(
          currentIndex: 0,
        );

  _ViewState copyWith({
    int? currentIndex,
  }) {
    return _ViewState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}

class _VSController extends StateNotifier<_ViewState> {
  _VSController() : super(_ViewState.initState());

  void onIndexChanged(int index) {
    state = state.copyWith(
      currentIndex: index,
    );
  }

  void onThemeChanged() {
    final currentThemeType = CWAppX.globalProviderScope.read(CWAppX.theme.current).type;

    final newTheme = currentThemeType == CWThemeType.dark ? CWThemeType.light : CWThemeType.dark;

    CWAppX.theme.switchTo(newTheme);
  }

  @override
  // ignore: must_call_super
  void dispose() {
    CWAppX.globalProviderScope.dispose();
  }
}
