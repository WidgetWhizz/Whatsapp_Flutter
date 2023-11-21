//divider

import 'package:flutter/material.dart';


class Divider extends StatelessWidget {
  final double thickness;
  final Color color;


  const Divider({
    Key? key,
    this.thickness = 1.0,
    this.color = Colors.grey,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: thickness,
      color: color,

    );
  }
}
