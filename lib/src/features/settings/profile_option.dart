import 'dart:html';

import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData trailing;


  final Function() onTap;
  const ProfileOption({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(


      leading:const CircleAvatar(radius: 30,
        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2662&q=80"),
       ),
      title: Text(title,style:TextStyle(color: Colors.black)),
      subtitle: Text(subtitle,style:TextStyle(color: Colors.grey)),
      trailing: Icon(trailing,color: Colors.grey,),
      onTap: onTap,

    );
  }
}
