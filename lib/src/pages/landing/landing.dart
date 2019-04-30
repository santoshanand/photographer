import 'package:flutter/material.dart';
import 'package:photographer/src/pages/home/home.dart';
import 'package:photographer/src/pages/landing/widgets/follow_button.dart';
import 'package:photographer/src/pages/landing/widgets/photo_view.dart';
import 'package:photographer/src/pages/landing/widgets/stats_view.dart';
import 'package:page_transition/page_transition.dart';

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
                    FollowButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: Home(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    StatsView(),
                    SizedBox(
                      height: 20,
                    ),
                    PhotoView(),
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
