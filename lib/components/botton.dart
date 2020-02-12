import 'package:flutter/material.dart';

import '../constant.dart';

class Botton extends StatelessWidget {
  final text;
  final onTap;

  Botton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBottomButtonText,
          ),
        ),
        padding: EdgeInsets.only(bottom: 10.0),
        color: kBottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
      ),
    );
  }
}
