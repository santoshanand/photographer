import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final VoidCallback onPressed;
  const FollowButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        onPressed: this.onPressed,
      ),
    );
  }
}
