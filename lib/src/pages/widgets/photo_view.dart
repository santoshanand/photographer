import 'package:flutter/material.dart';
import 'package:photographer/src/pages/widgets/thumb_view.dart';

class PhotoView extends StatelessWidget {
  const PhotoView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
