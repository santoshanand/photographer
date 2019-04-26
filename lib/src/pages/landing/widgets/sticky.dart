import 'package:flutter/material.dart';

class Sticky extends StatefulWidget {
  Sticky({Key key}) : super(key: key);

  _StickyState createState() => _StickyState();
}

class _StickyState extends State<Sticky> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                color: Colors.black38,
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Text('Header'),
              ),
              top: 0,
            ),
            Positioned(
              child: Container(
                child: Text('Content'),
              ),
              top: 60,
            ),
            Positioned(
              child: Container(
                color: Colors.black38,
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Text('Footer'),
              ),
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
