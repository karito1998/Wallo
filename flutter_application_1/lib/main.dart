import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/prueba.dart';
import 'package:flutter_application_1/pages/navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) {
          return NavigatorBar();
        }
      },
    );
  }
}
