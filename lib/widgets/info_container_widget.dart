import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double bottomLeft;
  final double bottomRight;
  final double topLeft;
  final double topRight;

  const InfoContainer({
    Key? key,
    required this.child,
    this.width = 0.20,
    this.bottomLeft = 25.0,
    this.bottomRight = 25.0,
    this.topLeft = 0.0,
    this.topRight = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * width,
      height: 50,
      child: child,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.lightBlueAccent,
          width: 1.5,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeft),
          bottomRight: Radius.circular(bottomRight),
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topRight),
        ),
      ),
    );
  }
}
