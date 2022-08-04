part of 'figure.dart';

class CircleFigure extends ConsumerWidget {
  final Color color;
  final double radius;
  const CircleFigure({
    Key? key,
    required this.color,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomPaint(
      size: Size.infinite,
      painter: _CirclePainter(
        color: color,
        radious: radius,
      ),
    );
  }
}

class _CirclePainter extends CustomPainter {
  final Color color;
  final double radious;

  _CirclePainter({
    required this.color,
    required this.radious,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radious, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
