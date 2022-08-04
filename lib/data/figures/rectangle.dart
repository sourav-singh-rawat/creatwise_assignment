part of '../amenities.dart';

//Can add one more wrapper over it, if not want to expose provider like we did for theme

final rectangleAmenityImplStateProvider = StateNotifierProvider<_RectangleAmenityImplStateController, _RectangleState>(
  (ref) {
    final stateController = _RectangleAmenityImplStateController();
    return stateController;
  },
);

class _RectangleState {
  final Color color;
  final Size size;
  _RectangleState({
    required this.color,
    required this.size,
  });

  _RectangleState.initState()
      : this(
          color: CWAppX.globalProviderScope.read(CWAppX.theme.current).colors.secoundary,
          size: const Size(200, 100),
        );

  _RectangleState copyWith({
    Color? color,
    Size? size,
  }) {
    return _RectangleState(
      color: color ?? this.color,
      size: size ?? this.size,
    );
  }
}

class _RectangleAmenityImplStateController extends StateNotifier<_RectangleState> implements FigureAmenity {
  _RectangleAmenityImplStateController() : super(_RectangleState.initState());

  @override
  Color get color => state.color;

  @override
  void onColorChanged(Color color) {
    state = state.copyWith(
      color: color,
    );
  }

  @override
  Size get size => state.size;

  @override
  void onSizeChanged(Size size) {
    state = state.copyWith(
      size: size,
    );
  }
}
