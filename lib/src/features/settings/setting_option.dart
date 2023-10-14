import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leading;

  final Function() onTap;

  const SettingOption({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading,color: Colors.grey,),
      title: Text(title,style:TextStyle(color: Colors.black)),
      subtitle: Text(subtitle,style:TextStyle(color: Colors.grey)),
      onTap: onTap,
    );
  }
}
