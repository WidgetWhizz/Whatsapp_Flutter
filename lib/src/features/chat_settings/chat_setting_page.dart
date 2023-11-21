import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_design/src/core/constant/app_colors.dart';
import 'package:whatsapp_design/src/core/constant/app_text_style.dart';
import 'package:whatsapp_design/src/strings.dart';
import 'package:whatsapp_design/src/features/chat_settings/chat_list_item.dart';
import 'package:whatsapp_design/src/features/chat_settings/chat_list_toggle.dart';


class ChatSettingPage extends StatefulWidget {
  const ChatSettingPage({super.key});

  @override
  State<ChatSettingPage> createState() => _ChatSettingPageState();
}

class _ChatSettingPageState extends State<ChatSettingPage> {
  bool enterIsSend = true;
  bool mediaVisibility = true;
  bool instantVideo = true;
  bool chatArchived = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          Strings.chats,
          style:const TextStyle(color: AppColors.whiteColor),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 1.w),
        child: ListView(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              Strings.display,
              style: AppTextStyles.subheaderStyle,
            ),
            SizedBox(
              height: 4.h,
            ),
            ChatListItem(
                title: Strings.theme,
                subtitle: Strings.systemDefault,
                leading: Icons.wb_sunny_outlined,
                onTap: () {}),
            SizedBox(
              height: 4.h,
            ),
            ChatListItem(
                title: Strings.wallpaper, leading: Icons.image, onTap: () {}),
            const Divider(),
            const Text(Strings.chatSettings),
            ChatListToggle(
                title: Strings.enterisSend,
                subtitle: Strings.enterKey,
                value: enterIsSend,
                onChanged: (value) => setState(() => enterIsSend = value),
                onTap: () {}),
            ChatListToggle(
                title: Strings.mediaVisiblity,
                value: mediaVisibility,
                onChanged: (value) => setState(() => mediaVisibility = value),
                onTap: () {}),
            ChatListToggle(
                title: Strings.instantVideo,
                value: instantVideo,
                onChanged: (value) => setState(() => instantVideo = value),
                onTap: () {}),
            ChatListItem(
              title: Strings.fontSize,
              onTap: () {},
              subtitle: Strings.medium,
            ),
            const Divider(),
            Text(
              Strings.archivedChats,
              style: AppTextStyles.subheaderStyle,
            ),
            ChatListToggle(
                title: Strings.keepChat,
                subtitle: Strings.archivedDiscription,
                value: chatArchived,
                onChanged: (value) => setState(() => chatArchived = value),
                onTap: () {}),
                const Divider(),
            ChatListItem(
                title: Strings.chatbackup,
                leading: Icons.cloud_upload,
                onTap: () {}),
            ChatListItem(
                title: Strings.transferchats,
                leading: Icons.phonelink_ring_outlined,
                onTap: () {}),
            ChatListItem(
              title: Strings.chathistory,
              onTap: () {},
              leading: Icons.history,
            ),
             SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}

