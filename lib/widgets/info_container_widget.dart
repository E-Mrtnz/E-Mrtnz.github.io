import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String text;
  final double width;

  const InfoContainer({
    Key? key,
    required this.text,
    this.width = 0.20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * width,
      height: 50,
      child: Text(text),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.lightBlueAccent,
          width: 1.5,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0),
        ),
      ),
    );
  }
}
