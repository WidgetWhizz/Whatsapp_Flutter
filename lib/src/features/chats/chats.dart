import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/images.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';
import 'package:whatsapp_design/src/features/chats/chats_list_item.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      const SizedBox(
        height: 10.0,
      ),
      ChatListItem(
          title: Strings.chat1Title,
          subTitle: Strings.chat1SubTitle,
          image: Images.chat1DP,
          lastChatTime: DateTime.now(),
          unreadCount: 2),
      const SizedBox(
        height: 10.0,
      ),
      ChatListItem(
          title: Strings.chat2Title,
          subTitle: Strings.chat2SubTitle,
          image: Images.chat2DP,
          lastChatTime: DateTime(2023, 9, 12),
          unreadCount: 0),
    ])));
  }
}
