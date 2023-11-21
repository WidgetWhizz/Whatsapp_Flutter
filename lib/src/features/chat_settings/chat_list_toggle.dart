import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_design/src/core/constant/app_colors.dart';
import 'package:whatsapp_design/src/core/constant/app_text_style.dart';

class ChatListToggle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool value;
  final void Function(bool) onChanged;
  final Function() onTap;
  const ChatListToggle(
      {super.key,
      required this.title,
      this.subtitle,
      required this.value,
      required this.onChanged,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:6.w),
      child: ListTile(
        title: Text(title,style: AppTextStyles.titleTextStyles,),
        subtitle: subtitle != null ? Text(subtitle!,style: AppTextStyles.bodyTextStyle,) : null,
        trailing: Switch(
        activeColor: AppColors.primaryColor,
        inactiveThumbColor: AppColors.greyColor,
        value: value, 
        onChanged: onChanged),
      ),
    );
  }
}

