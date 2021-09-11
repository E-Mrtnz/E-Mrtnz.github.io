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
          SizedBox(height: MediaQuery.of(context).size.height * 0.30),
          Column(
            children: [
              FloatingActionButton(
                onPressed: () => suma(),
                child: Icon(Icons.add),
              ),
              Text('Panel central'),
            ],
          ),
        ],
      ),
    );
  }
}

/*
Container(
  // width: 200,
  // height: 600,
  child: Column(
    children: [
      InfoContainer(child: Text('12,678')),
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
*/