import 'package:flutter/material.dart';

class CommonPayment extends StatelessWidget {
  final IconData leading;
  final String title;
  
  const CommonPayment({
    super.key, 
    required this.leading,
     required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(leading),
        title: Text(title),
      ),
    );
  }
}