import 'presentacion.dart';
import 'package:flutter/material.dart';
import 'package:reparaquen/presentacion.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'reparaquen',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
       // primarySwatch: Colors.blue,
      ),
     initialRoute: Presentacion.id, routes: {
        Presentacion.id : (context) => Presentacion(),
      },
    );
  }
}

