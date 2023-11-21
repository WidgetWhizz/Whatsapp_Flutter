import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constant/app_colors.dart';
import 'package:whatsapp_design/src/core/constant/app_text_style.dart';

class ChatListItem extends StatelessWidget {
   final String title;
  final String? subtitle;
  final IconData? leading;
  final Function() onTap;
  const ChatListItem({super.key, required this.title, this.subtitle,this.leading, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading,color: AppColors.greyColor,),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!,style: AppTextStyles.bodyTextStyle,) : null,
      onTap: onTap,
    );
  }
}
