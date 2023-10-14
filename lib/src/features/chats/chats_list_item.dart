import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/helper/datetime-helper.dart';
import 'package:whatsapp_design/src/core/theme/text_theme.dart';

class ChatListItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final DateTime lastChatTime;
  final int unreadCount;

  const ChatListItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.lastChatTime,
      required this.unreadCount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
        radius: 40,
      ),
      title: Text(
        title,
        style: AppTextTheme.titleTextStyle,
      ),
      subtitle: Text(
        subTitle,
        style: AppTextTheme.subTitleTextStyle,
      ),
      trailing: Column(
        children: [
          Text(DateTimeHelper.getFormattedDate(lastChatTime)),
          SizedBox(height: 8,),
          Visibility(
            visible: unreadCount > 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50.0)),
              child: Center(child: Text('$unreadCount')),
            ),
          )
        ],
      ),


    );
  }

}


