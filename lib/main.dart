import 'package:flutter/material.dart';

import 'package:pukman_clickers/pages/pages.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(243, 244, 246, 1.0)),
      debugShowCheckedModeBanner: false,
      title: 'Puk-Man Clickers',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
