part of '../amenities.dart';

final circleAmenityImplStateProvider = StateNotifierProvider<_CircleAmenityImplStateController, _CircleState>(
  (ref) {
    final stateController = _CircleAmenityImplStateController();
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
