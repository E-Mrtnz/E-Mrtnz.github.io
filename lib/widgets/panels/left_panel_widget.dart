import 'package:flutter/material.dart';
import 'package:pukman_clickers/widgets/podium_widget.dart';

import 'package:pukman_clickers/widgets/widgets.dart';

class LeftPanelWidget extends StatelessWidget {
  const LeftPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PanelContainer(
      child: Column(
        children: [
          InfoContainer(child: Text('Ranking')),

          PodiumWidget(),

          Column(children: [SizedBox(height: 16.0), ArrowWidget()]),
          Column(children: [SizedBox(height: 16.0), ArrowWidget()]),
          Column(children: [SizedBox(height: 16.0), ArrowWidget()]),
          // Column(children: [SizedBox(height: 16.0), ArrowWidget()]),
          // Column(children: [SizedBox(height: 16.0), ArrowWidget()]),
          // Column(children: [SizedBox(height: 16.0), ArrowWidget()]),
          // // Column(children: [ArrowWidget(), SizedBox(height: 16.0)]),
          // Text('Panel izquierdo'),
          // Text('${MediaQuery.of(context).size.width / 3}'),
        ],
      ),
    );
  }
}
