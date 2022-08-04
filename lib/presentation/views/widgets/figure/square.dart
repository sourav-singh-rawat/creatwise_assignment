part of 'figure.dart';

class SquareFigure extends ConsumerWidget {
  final Color color;
  final double size;
  const SquareFigure({
    Key? key,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomPaint(
      size: Size.infinite,
      painter: _SquarePainter(
        color: color,
        size: size,
      ),
    );
  }
}

class _SquarePainter extends CustomPainter {
  final Color color;
  final double size;

  _SquarePainter({required this.color, required this.size});

  @override
  void paint(Canvas canvas, Size canvasSize) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final centerPositionOffset = Offset(
        canvasSize.width / 2 - size / 2, canvasSize.height / 2 - size / 2);

    canvas.drawRect(centerPositionOffset & Size(size, size), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
