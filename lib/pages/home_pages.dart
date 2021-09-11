import 'package:flutter/material.dart';

import 'package:pukman_clickers/widgets/panels/panels.dart';
import 'package:pukman_clickers/widgets/widgets.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            // El column es el contenedor de los paneles que abarca todo el ancho
            children: [
              InfoContainer(
                width: 1.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Currently logged in as'),
                    Column(
                      children: [
                        Text('Total clicks among all players'),
                        Text('1,356,728'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Currently logged in as'),
                        Text('Edgar M.'),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  LeftPanelWidget(),
                  SizedBox(width: 16.0),
                  Expanded(child: CentralPanelWidget()),
                  SizedBox(width: 16.0),
                  RightPanelWidget(),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
// TODO: Remover este container al terminar de disenar
Container(
  color: Colors.red,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InfoContainer(
        width: 0.30,
        text:
            'Total clicks among all playersTotal clicks among all players',
      ),
      const Text('Total clicks among all players'),
      const Text('1,356,728'),
      // TODO: Remover este container al terminar de disenar
      Container(
        height: MediaQuery.of(context).size.width * 0.50,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            LeftPanelWidget(),
            SizedBox(width: 16.0),
            Expanded(child: CentralPanelWidget()),
            SizedBox(width: 16.0),
            RightPanelWidget(),
          ],
        ),
      ),
    ],
  ),
),
 */


/*
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
*/