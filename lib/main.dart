import 'package:flutter/material.dart';

import 'package:pukman_clickers/pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
