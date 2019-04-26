import 'package:flutter/material.dart';

class ThumbView extends StatelessWidget {
  const ThumbView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 10,
        direction: Axis.horizontal,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/common/movie1.png'),
          ),
          Image(
            image: AssetImage('assets/images/common/movie2.png'),
          ),
          Image(
            image: AssetImage('assets/images/common/movie3.png'),
          ),
          Image(
            image: AssetImage('assets/images/common/movie1.png'),
          ),
          Image(
            image: AssetImage('assets/images/common/movie2.png'),
          ),
          Image(
            image: AssetImage('assets/images/common/movie3.png'),
          ),
          Image(
            image: AssetImage('assets/images/common/movie1.png'),
          ),
        ],
      ),
    );
  }
}
