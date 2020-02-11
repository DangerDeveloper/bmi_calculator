import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color color;
  final Widget childData;

  ReuseableCard({@required this.color, this.childData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childData,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
