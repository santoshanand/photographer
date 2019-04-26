import 'package:flutter/material.dart';
import 'package:photographer/src/pages/widgets/thumb_view.dart';

class Landing extends StatefulWidget {
  Landing({Key key}) : super(key: key);

  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/common/bg.png'),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/common/Oval.png'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Cassian',
                      style: TextStyle(color: Color(0xffFF9780), fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Photographer'),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 200,
                      height: 44,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xffFF9780),
                        child: Text(
                          'FOLLOW',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 20,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('27'),
                            Text('Shots'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('100'),
                            Text('Following'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('1.2M'),
                            Text('Followers'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          side: BorderSide(color: Colors.black26),
                        ),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Text('PHOTO'),
                          SizedBox(
                            height: 20,
                          ),
                          ThumbView(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
