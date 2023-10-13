
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final dynamic icon;
  final String label;


  const OptionButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = Icon(Icons.error, size: 30, color: Colors.red);

    if (icon is IconData) {
      iconWidget = Icon(icon, size: 30, color: Colors.grey);
    } else if (icon is Image) {
      iconWidget = icon;
    }

    return Row(
      children: [
        iconWidget,
        SizedBox(width: 16),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
