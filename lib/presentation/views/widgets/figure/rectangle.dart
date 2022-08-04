part of 'figure.dart';

class RectangleFigure extends ConsumerWidget {
  final Color color;
  final Size size;
  const RectangleFigure({
    Key? key,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomPaint(
      size: Size.infinite,
      painter: _RectanglePainter(
        color: color,
        size: size,
      ),
    );
  }
}

class _RectanglePainter extends CustomPainter {
  final Color color;
  final Size size;
  _RectanglePainter({
    required this.color,
    required this.size,
  });

  @override
  void paint(Canvas canvas, Size canvasSize) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final centerPositionOffset = Offset( canvasSize.width/2-size.width/2, canvasSize.height/2-size.height/2);

    canvas.drawRect(centerPositionOffset & size, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
