import 'package:flutter/material.dart';

import 'package:pukman_clickers/widgets/widgets.dart';

class RightPanelWidget extends StatelessWidget {
  const RightPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPanelContainer(
      child: Column(
        children: [
          InfoContainer(text: 'Text'),
          Center(
            child: Text('Panel derecho'),
          ),
        ],
      ),
    );
  }
}
