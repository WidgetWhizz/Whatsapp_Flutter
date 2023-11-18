import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/app_textstyles.dart';

class NotificationCarditem extends StatelessWidget {
  final String title;
  final String subtitle;
  const NotificationCarditem({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: AppTextStyles.titleTextStyle,),
      subtitle: Text(subtitle,style: AppTextStyles.bodyTextStyle,),
    );
  }
}