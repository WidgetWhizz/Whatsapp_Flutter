import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/features/chats/chats_list_item.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body:  SafeArea(
        child: ListView(
            children: [
            ChatListItemWidget(
            title: "Aditya",
            subTitle: "Hello there",
            image:
            'https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-768x768.jpg',
            lastChatTime: DateTime.now(),
            unreadCount: 2),
        ChatListItemWidget(
            title: "Anlin",
            subTitle: "Hi there",
            image:
            'https://www.epicscotland.com/wp-content/uploads/2018/01/Business-Headshot_002.jpg',
            lastChatTime: DateTime(2023, 9, 12),
            unreadCount: 0),
        ]
        )
      )


    );

  }
}
