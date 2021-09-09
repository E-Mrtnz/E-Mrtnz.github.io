import 'package:flutter/material.dart';

class LeftPanelWidget extends StatelessWidget {
  const LeftPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 600,
      color: Colors.redAccent[200],
      child: Center(
        child: Text('Panel Izquierdo'),
      ),
    );
  }
}
