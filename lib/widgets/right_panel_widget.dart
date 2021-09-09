import 'package:flutter/material.dart';

class RightPanelWidget extends StatelessWidget {
  const RightPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 600,
      color: Colors.lightBlue[200],
      child: Center(
        child: Text('Panel Derecho'),
      ),
    );
  }
}
