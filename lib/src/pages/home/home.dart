import 'package:flutter/material.dart';
import 'package:photographer/src/pages/landing/widgets/thumb_view.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff383838),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          shape: Border(
            bottom: BorderSide(
              color: Color(0xffDEDEDE),
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text(
            'Photographers',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 90),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.tune),
                    onPressed: () {},
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Center(
                            child: Image(
                              image:
                                  AssetImage('assets/images/common/pic1.png'),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            child: IntrinsicWidth(
                              child: FlatButton(
                                onPressed: () {},
                                child: Text('Follow'),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Recent Work'),
                      SizedBox(
                        height: 20,
                      ),
                      ThumbView(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
