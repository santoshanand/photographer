import 'package:flutter/material.dart';
import 'package:photographer/src/pages/landing/landing.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photographer App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Landing(),
    );
  }
}
