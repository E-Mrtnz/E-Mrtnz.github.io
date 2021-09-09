import 'dart:io';

import 'package:pukman_clickers/widgets/widgets.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clicks totales entre todos los jugadores'),
            const Text('Hola Mundo Web - Mobile desde el home page'),
            ElevatedButton(
              child: const Icon(
                Icons.check,
              ),
              onPressed: () {
                String os = Platform.operatingSystem;
                final snackBar = SnackBar(
                  content: Text(
                    'La plataforma del sistema es: $os',
                  ),
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LeftPanelWidget(),
                CentralPanelWidget(),
                RightPanelWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
