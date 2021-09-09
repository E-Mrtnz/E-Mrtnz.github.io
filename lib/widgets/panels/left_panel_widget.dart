import 'package:flutter/material.dart';

import 'package:pukman_clickers/widgets/widgets.dart';

class LeftPanelWidget extends StatelessWidget {
  const LeftPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPanelContainer(
      child: Column(
        children: [
          InfoContainer(text: 'Ranking'),
          ArrowWidget(),
          CustomPaint(painter: ArrowContainerPaint()),
          Text('Panel izquierdo'),
          Text('${MediaQuery.of(context).size.width / 3}'),
        ],
      ),
    );
  }
}
