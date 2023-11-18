import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/app_colors.dart';
import 'package:whatsapp_design/src/app_textstyles.dart';
import 'package:whatsapp_design/src/colors.dart';

class NotificationToggle extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool value;
  final void Function(bool) onChanged;
  const NotificationToggle({super.key, 
  required this.title, 
  required this.value, 
  required this.onChanged, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: AppTextStyles.titleTextStyle,),
      subtitle: Text(subtitle,style: AppTextStyles.bodyTextStyle,),
      trailing: Switch(
        activeColor: wpgreen,
        inactiveThumbColor: AppColors.greyColor,
        value: value, 
        onChanged: onChanged),
    );
  }
}