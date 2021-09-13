import 'package:flutter/material.dart';

import 'package:pukman_clickers/widgets/panels/panels.dart';
import 'package:pukman_clickers/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              // CONTENEDOR DEL PANEL IZQUIERDO, CENTRAL Y DERECHO
              Row(
                children: [
                  LeftPanelWidget(),
                  SizedBox(width: 16.0),
                  Expanded(child: CentralPanelWidget()),
                  SizedBox(width: 16.0),
                  RightPanelWidget(),
                ],
              ),
              // PIE DE PAGINA
              Expanded(child: Container(color: Colors.grey)),
              // Expanded(
              //   child: InfoContainer(
              //     width: 1.0,
              //     bottomLeft: 0.0,
              //     bottomRight: 0.0,
              //     topLeft: 25.0,
              //     topRight: 25.0,
              //     child: Text('data'),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
