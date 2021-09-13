import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PodiumWidget extends StatelessWidget {
  const PodiumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 426.6,
      // height: 300,
      height: MediaQuery.of(context).size.width * 0.245,
      // color: Colors.lime,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // TODO: PODIUM DEL SEGUNDO LUGAR === 2do
          const Podium(
            heightPodium: 100.0,
            userName: 'Fer Amaya el PRO',
            score: '543,489',
            positionPlace: '2',
            radiusAro: 65.0,
            frontColor: Color.fromRGBO(211, 211, 211, 1.0),
            aroColor: Color.fromRGBO(173, 173, 173, 1.0),
          ),
          // TODO: CORONA DEL PRIMER LUGAR === 1er
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.06,
                height: 56.0,
                // height: 200.0,
                // width: 200.0,
                // color: Colors.black,
                child: CustomPaint(
                  painter: CrownPaint(),
                ),
              ),
              // SizedBox(height: 8.0),
              SizedBox(height: 10.0),
              // TODO: PODIUM DEL PRIMER LUGAR === 1er
              const Podium(
                heightPodium: 140.0,
                userName: 'Edgardo M. como Z',
                score: '789,657',
                positionPlace: '1',
                radiusAro: 65.0,
                frontColor: Color.fromRGBO(254, 218, 2, 1.0),
                aroColor: Color.fromRGBO(230, 184, 11, 1.0),
              ),
            ],
          ),

          // TODO: PODIUM DEL TERCERO LUGAR === 3ro
          const Podium(
            heightPodium: 80.0,
            userName: 'A. Arteaga UwU :3 <3',
            score: '147,564',
            positionPlace: '3',
            radiusAro: 65.0,
            frontColor: Color.fromRGBO(229, 147, 98, 1.0),
            aroColor: Color.fromRGBO(206, 107, 52, 1.0),
          ),
        ],
      ),
    );
  }
}

class Podium extends StatelessWidget {
  const Podium({
    Key? key,
    required this.userName,
    required this.score,
    required this.positionPlace,
    required this.radiusAro,
    required this.frontColor,
    required this.aroColor,
    required this.heightPodium,
  }) : super(key: key);

  final String userName;
  final String score;
  final double heightPodium;
  final String positionPlace;
  final double radiusAro;
  final Color frontColor;
  final Color aroColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.09,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            // width: 115,
            child: Text(
              userName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            score,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 30.0),
          // TODO: CONTENEDOR DEL PODIUM
          Container(
            width: MediaQuery.of(context).size.width * 0.09,
            // width: 113.0,
            height: heightPodium,
            decoration: BoxDecoration(
              color: Color.fromRGBO(200, 200, 201, 1.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.5,
                  color: Color.fromRGBO(220, 220, 220, 1.0),
                  offset: Offset(0, -25),
                ),
              ],
            ),
            // TODO: MEDALLA DE POSICION DEL PODIUM 1,2,3
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: radiusAro,
                        height: radiusAro,
                        color: aroColor,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: 55.0,
                        height: 55.0,
                        color: frontColor,
                        child: Center(
                          child: Text(
                            positionPlace,
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: aroColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CrownPaint extends CustomPainter {
  // Colores para la corona
  Color color1 = const Color.fromRGBO(255, 255, 102, 1.0);
  Color color2 = const Color.fromRGBO(254, 205, 0, 1.0);
  Color color3 = const Color.fromRGBO(254, 153, 0, 1.0);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color1
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0;

    final paint2 = Paint()
      ..color = color2
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    final path = Path();

    path.moveTo(size.width * 0.10, size.height);
    path.lineTo(size.width * 0.90, size.height);
    path.lineTo(size.width * 0.90, size.height * 0.8); //borde lateral derecho
    path.lineTo(size.width * 0.88, size.height * 0.8); //Pliege del lateral
    path.lineTo(size.width * 0.90, size.height * 0.3); //punta diagonal de bola
    path.lineTo(size.width * 0.87, size.height * 0.27);
    path.lineTo(size.width * 0.7, size.height * 0.8); //punta de en medio abajo
    path.lineTo(size.width * 0.55, size.height * 0.3); //punta de en medio
    path.lineTo(size.width * 0.5, size.height * 0.3); //punta de en medio
    path.lineTo(size.width * 0.3, size.height * 0.8);
    path.lineTo(size.width * 0.15, size.height * 0.38); //punta izquierda
    path.lineTo(size.width * 0.09, size.height * 0.31); //pliege punta dela bola

    path.lineTo(size.width * 0.12, size.height * 0.8); //borde lateral izquierdo
    path.lineTo(size.width * 0.10, size.height * 0.8); //Pliege del lateral
    path.lineTo(size.width * 0.10, size.height); //Pliege del lateral
    canvas.drawPath(path, paint);
    // Borde de  la corona
    canvas.drawPath(path, paint2);

    // punta 1 de atras de la corona==========================
    final path2 = Path();
    final paint3 = Paint()
      ..color = color3
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.5;

    path2.moveTo(size.width * 0.24, size.height * 0.645);
    path2.lineTo(size.width * 0.3, size.height * 0.45);
    path2.lineTo(size.width * 0.365, size.height * 0.645);
    path2.lineTo(size.width * 0.3, size.height * 0.8);

    canvas.drawPath(path2, paint3);

    // punta 2 de atras de la corona==========================
    final path3 = Path();

    path3.moveTo(size.width * 0.645, size.height * 0.645);
    path3.lineTo(size.width * 0.7, size.height * 0.45);
    path3.lineTo(size.width * 0.755, size.height * 0.645);
    path3.lineTo(size.width * 0.7, size.height * 0.79);

    canvas.drawPath(path3, paint3);

    // Bolas de coronas
    // Bola 1
    Offset center = Offset(size.width * 0.89, size.height * 0.31);
    final Rect rect =
        Rect.fromCenter(center: center, width: 10.0, height: 10.0);
    // Bola 2
    Offset center2 = Offset(size.width * 0.520, size.height * 0.25);
    final Rect rect2 =
        Rect.fromCenter(center: center2, width: 13.0, height: 10.0);
    // Bola 3
    Offset center3 = Offset(size.width * 0.11, size.height * 0.31);
    final Rect rect3 =
        Rect.fromCenter(center: center3, width: 10.0, height: 10.0);

    // Bola 4
    Offset center4 = Offset(size.width * 0.7, size.height * 0.45);
    final Rect rect4 =
        Rect.fromCenter(center: center4, width: 7.0, height: 7.0);

    // Bola 5
    Offset center5 = Offset(size.width * 0.3, size.height * 0.45);
    final Rect rect5 =
        Rect.fromCenter(center: center5, width: 7.0, height: 7.0);

    canvas.drawArc(rect, 3.14, 3.14 * 2, false, paint);
    canvas.drawArc(rect2, 2.1, 3.14 * 1.65, false, paint);
    canvas.drawArc(rect3, 3.14, 3.14 * 2, false, paint);

    // Borde de las bolas
    canvas.drawArc(rect, 2.5, 3.14 * 1.65, false, paint2);
    canvas.drawArc(rect2, 2.1, 3.14 * 1.65, false, paint2);
    canvas.drawArc(rect3, 1.9, 3.14 * 1.65, false, paint2);

    // Bolas de coronas de atras
    canvas.drawArc(rect4, 3.14, 3.14 * 2, false, paint3);
    canvas.drawArc(rect5, 3.14, 3.14 * 2, false, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
