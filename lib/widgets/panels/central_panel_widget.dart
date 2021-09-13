import 'package:flutter/material.dart';

import 'package:pukman_clickers/widgets/widgets.dart';

class CentralPanelWidget extends StatefulWidget {
  const CentralPanelWidget({Key? key}) : super(key: key);

  @override
  State<CentralPanelWidget> createState() => _CentralPanelWidgetState();
}

class _CentralPanelWidgetState extends State<CentralPanelWidget> {
  int score = 12678;
  void suma() {
    score++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return PanelContainer(
      child: Column(
        children: [
          InfoContainer(child: Text('$score')),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.30),
          SizedBox(height: 125.0),
          ButtonPukmanWidget(),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => setState(() => suma()),
          ),
        ],
      ),
    );
  }
}
