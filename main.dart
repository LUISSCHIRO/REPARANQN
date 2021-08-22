
import 'package:flutter/material.dart';
import 'login.dart';

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
      initialRoute: Login.id, routes: {
        Login.id : (context) => Login(),
      },
    );
  }
}

