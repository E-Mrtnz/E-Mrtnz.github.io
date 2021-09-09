import 'package:flutter/material.dart';
import 'package:pukman_clickers/widgets/widgets.dart';

class CentralPanelWidget extends StatelessWidget {
  const CentralPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 600,
      child: Column(
        children: [
          InfoContainer(text: '12,678'),
          Center(
            child: Text('Panel central'),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
