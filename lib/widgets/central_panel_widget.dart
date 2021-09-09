import 'package:flutter/material.dart';

class CentralPanelWidget extends StatelessWidget {
  const CentralPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 600,
      color: Colors.green[200],
      child: Center(
        child: Text('Panel central'),
      ),
    );
  }
}
