import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// ignore: use_key_in_widget_constructors
class PodiumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 426.6,
      // height: 300,
      height: MediaQuery.of(context).size.width * 0.235,
      color: Colors.lime,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // TODO: PODIUM DEL SEGUNDO LUGAR === 2do
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 115,
                // color: Colors.red,
                child: Text(
                  'Edgardo M. Jose paranoia de la montania',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Text('1,489,657'),
              SizedBox(height: 35.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.09,
                // width: 113.0,
                height: 100.0,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Container(
                            width: 65.0,
                            height: 65.0,
                            color: Color.fromRGBO(173, 173, 173, 1.0),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Container(
                            width: 55.0,
                            height: 55.0,
                            color: Color.fromRGBO(211, 211, 211, 1.0),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(173, 173, 173, 1.0),
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
          // TODO: PODIUM DEL TERCERO LUGAR === 3ro
          Container(
            width: MediaQuery.of(context).size.width * 0.09,
            // width: 113.0,
            height: 140.0,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: 65.0,
                        height: 65.0,
                        color: Color.fromRGBO(230, 184, 11, 1.0),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: 55.0,
                        height: 55.0,
                        color: Color.fromRGBO(254, 218, 2, 1.0),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(230, 184, 11, 1.0),
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
          // TODO: PODIUM DEL PRIMER LUGAR === 1er
          Container(
            width: MediaQuery.of(context).size.width * 0.09,
            // width: 113.0,
            height: 80.0,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: 65.0,
                        height: 65.0,
                        color: Color.fromRGBO(206, 107, 52, 1.0),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: 55.0,
                        height: 55.0,
                        color: Color.fromRGBO(229, 147, 98, 1.0),
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(206, 107, 52, 1.0),
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

/*
// import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
// class PodiumWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 426.6,
//         height: 300,
//         color: Colors.amber,
//         child: Container(
//           width: 10.0,
//           height: 10.0,
//           color: Colors.red,
//         )
//         // Container(
//         //   width: 100.0,
//         //   height: 100.0,
//         //   decoration: BoxDecoration(
//         //     color: Colors.red,
//         //     boxShadow: [
//         //       BoxShadow(
//         //         color: Colors.grey,
//         //         offset: Offset(0, -30),
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         );
//   }
// }

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class PodiumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 426.6,
      // height: 300,
      height: MediaQuery.of(context).size.width * 0.235,
      color: Colors.lime,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Podium(),
          Medal(
            text: '1',
            radiusAro: 65,
            frontcolor: Color.fromRGBO(254, 218, 2, 1.0),
            aroColor: Color.fromRGBO(230, 184, 11, 1.0),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.09,
            // width: 113.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.teal,
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.5,
                  color: Colors.grey,
                  offset: Offset(0, -25),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    color: Color.fromRGBO(192, 192, 192, 1.0),
                    child: Center(
                      child: Text('3'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Podium extends StatelessWidget {
  const Podium({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.09,
      // width: 113.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        boxShadow: [
          BoxShadow(
            blurRadius: 0.5,
            color: Colors.grey,
            offset: Offset(0, -25),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Container(
              width: 55.0,
              height: 55.0,
              color: Color.fromRGBO(203, 109, 81, 1.0),
              child: Center(
                child: Text('2'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Medal extends StatelessWidget {
  const Medal({
    Key? key,
    required this.text,
    required this.radiusAro,
    required this.frontcolor,
    required this.aroColor,
  }) : super(key: key);

  final String text;
  final double radiusAro;
  final Color frontcolor;
  final Color aroColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.09,
      // width: 113.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: Colors.green,
        boxShadow: [
          BoxShadow(
            blurRadius: 0.5,
            color: Colors.grey,
            offset: Offset(0, -25),
          ),
        ],
      ),
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
                  color: frontcolor,
                  child: Center(
                    child: Text(
                      text,
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
    );
  }
}

// class RankingPodiumPaint extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.black
//       // ..color = Colors.white38
//       ..style = PaintingStyle.fill
//       // ..style = PaintingStyle.stroke
//       ..strokeWidth = 8;

//     final path = Path();

//     // path.moveTo(size.width * 0.15, size.height * 0.5);
//     path.moveTo(size.width * 0.15, size.height);
//     // path.lineTo(x, y);
//     path.lineTo(size.width * 0.85, size.height);
//     path.lineTo(size.width * 0.92, size.height * 0.5); //punto de en medio
//     path.lineTo(size.width * 0.85, 0);
//     path.lineTo(size.width * 0.15, 0);
//     // path.lineTo(x ->, y A);
//     path.lineTo(size.width * 0.23, size.height * 0.5);
//     // path.lineTo(size.width * 0.15, size.height * 0.5);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

*/
