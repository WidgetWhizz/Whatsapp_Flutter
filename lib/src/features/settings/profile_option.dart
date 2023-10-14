
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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


      leading: CircleAvatar(radius: 10.sp,
        backgroundImage: AssetImage("assets/images/profiles.jpeg"),
       ),
      title: Text(title,style:TextStyle(color: Colors.black)),
      subtitle: Text(subtitle,style:TextStyle(color: Colors.grey)),
      trailing: Icon(trailing,color: Colors.grey,),
      onTap: onTap,

    );
  }
}
