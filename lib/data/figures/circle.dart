part of '../amenities.dart';

//Can add one more wrapper over it, if not want to expose provider like we did for theme

final circleAmenityImplStateProvider = StateNotifierProvider<_CircleAmenityImplStateController, _CircleState>(
  (ref) {
    final stateController = _CircleAmenityImplStateController();
    stateController.initState();
    return stateController;
  },
);

class _CircleState {
  final Color color;
  final double radius;
  _CircleState({
    required this.color,
    required this.radius,
  });

  _CircleState.initState()
      : this(
          color: CWAppX.globalProviderScope.read(CWAppX.theme.current).colors.secoundary,
          radius: 70,
        );

  _CircleState copyWith({
    Color? color,
    double? radius,
  }) {
    return _CircleState(
      color: color ?? this.color,
      radius: radius ?? this.radius,
    );
  }
}

class _CircleAmenityImplStateController extends StateNotifier<_CircleState> implements FigureAmenity {
  _CircleAmenityImplStateController() : super(_CircleState.initState());

  void initState() {
    CWAppX.globalProviderScope.listen<CWThemeState>(CWAppX.theme.current, (previous, next) {
      onColorChanged(next.colors.secoundary);
    });
  }

  @override
  Color get color => state.color;

  @override
  void onColorChanged(Color color) {
    state = state.copyWith(
      color: color,
    );
  }

  @override
  Size get size => Size(state.radius, state.radius);

  @override
  void onSizeChanged(Size size) {
    state = state.copyWith(
      radius: size.width,
    );
  }
}
