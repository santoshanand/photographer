import 'package:flutter/material.dart';

class Default extends StatefulWidget {
  @override
  _DefaultState createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber.shade100,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/common/home-bg.jpg'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
