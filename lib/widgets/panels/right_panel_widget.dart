import 'package:flutter/material.dart';

import 'package:pukman_clickers/widgets/widgets.dart';

class RightPanelWidget extends StatelessWidget {
  const RightPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PanelContainer(
          height: 0.4,
          child: Column(
            children: [
              InfoContainer(child: Text('Customize your character')),
              Center(
                child: Text('Panel derecho'),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        PanelContainer(
          height: 0.4,
          child: Center(
            child: Text('Anuncios'),
          ),
        ),
      ],
    );
  }
}
