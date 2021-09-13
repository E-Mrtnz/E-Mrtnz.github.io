import 'package:flutter/material.dart';

import 'dart:math' as math;

class ButtonPukmanWidget extends StatefulWidget {
  const ButtonPukmanWidget({Key? key}) : super(key: key);

  @override
  State<ButtonPukmanWidget> createState() => _ButtonPukmanWidgetState();
}

class _ButtonPukmanWidgetState extends State<ButtonPukmanWidget> {
  @override
  Widget build(BuildContext context) {
    // double openAngle = 0.1;
    double openAngle = 3.6;
    bool cerrar = false;

    void boca() {
      if (cerrar == true) {
        openAngle = 0.1;
      } else {
        openAngle = 3.6;
      }
      cerrar = !cerrar;
    }

    return GestureDetector(
      onTap: boca,
      child: Container(
        width: 300.0,
        height: 300.0,
        child: CustomPaint(
          painter: PukmanFaceButton(openAngle: openAngle),
        ),
      ),
    );
  }
}

class PukmanFaceButton extends CustomPainter {
  PukmanFaceButton({required this.openAngle});
  final double openAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint1 = Paint()
      ..color = Colors.yellowAccent.shade700
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    final Offset offset = Offset(size.width / 2, size.height / 2);

    final Rect rect =
        Rect.fromCenter(center: offset, width: size.width, height: size.height);

    canvas.drawArc(rect, math.pi / 3.6,
        (openAngle == 3.6) ? math.pi + 0.1 : math.pi + 3.6, true, paint1);

    canvas.drawArc(rect, math.pi / openAngle, math.pi, true, paint1);
    canvas.drawArc(rect, -math.pi / openAngle, -math.pi, true, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
