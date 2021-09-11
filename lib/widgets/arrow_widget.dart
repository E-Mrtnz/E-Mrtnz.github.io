import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ArrowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 426.6,
      height: 75,
      // color: Colors.amber,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: ArrowContainerPaint3()),
          CustomPaint(
            painter: ArrowContainerPaint2(),
            child: Row(
              children: [
                SizedBox(width: 33.0),
                Text(
                  '4',
                  style: TextStyle(color: Colors.tealAccent, fontSize: 30.0),
                ),
              ],
            ),
          ),
          CustomPaint(
            painter: ArrowContainerPaint1(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Edgardo M.',
                  style: TextStyle(color: Colors.pink),
                ),
                Text(
                  "3,545,149,825",
                  style: TextStyle(color: Colors.pink),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ArrowContainerPaint1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.lime.shade400
      // ..color = Colors.white38
      ..style = PaintingStyle.fill
      // ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    final path = Path();

    // path.moveTo(size.width * 0.15, size.height * 0.5);
    path.moveTo(size.width * 0.15, size.height);
    // path.lineTo(x, y);
    path.lineTo(size.width * 0.85, size.height);
    path.lineTo(size.width * 0.92, size.height * 0.5); //punto de en medio
    path.lineTo(size.width * 0.85, 0);
    path.lineTo(size.width * 0.15, 0);
    // path.lineTo(x ->, y A);
    path.lineTo(size.width * 0.23, size.height * 0.5);
    // path.lineTo(size.width * 0.15, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ArrowContainerPaint2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.lightGreen
      ..style = PaintingStyle.fill
      ..strokeWidth = 8;
    final path = Path();

    path.moveTo(size.width * 0.03, size.height * 0.92);
    path.lineTo(size.width * 0.93, size.height * 0.92);
    path.lineTo(size.width * 0.98, size.height * 0.5); //punta de en medio adel
    path.lineTo(size.width * 0.93, size.height * 0.08);
    path.lineTo(size.width * 0.03, size.height * 0.08);
    path.lineTo(size.width * 0.07, size.height * 0.5); //punta de en medio atras

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ArrowContainerPaint3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.lightBlue
      ..style = PaintingStyle.fill
      ..strokeWidth = 8;

    final path = Path();

    path.moveTo(size.width * 0.02, size.height * 0.945);
    path.lineTo(size.width * 0.935, size.height * 0.945);
    path.lineTo(size.width * 0.985, size.height * 0.5); //punta de en medio adel
    path.lineTo(size.width * 0.935, size.height * 0.06);
    path.lineTo(size.width * 0.02, size.height * 0.06);
    path.lineTo(
        size.width * 0.063, size.height * 0.5); //punta de en medio atras

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
