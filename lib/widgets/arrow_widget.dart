import 'package:flutter/material.dart';

import 'package:pukman_clickers/widgets/widgets.dart';

// ignore: use_key_in_widget_constructors
class ArrowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: eliminar este container
    return Container(
      color: Colors.red,
    );
  }
}

class ArrowContainerPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;

    final path = Path();

    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
