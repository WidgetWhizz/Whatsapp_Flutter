import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/helper/datetime-helper.dart';
import 'package:whatsapp_design/src/core/theme/text_theme.dart';

class CallList extends StatelessWidget {
  final String callerName, userImage, callTypeImage;
  final int imageColor;
  final int titleColor;
  final DateTime dateTime;
  final String imagePath;

  const CallList({
        super.key,
        required this.callerName,
        required this.userImage,
        required this.dateTime,
        required this.callTypeImage,
        required this.imageColor,
        required this.titleColor,
        required this.imagePath
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(userImage),
        radius: 40,
      ),
      trailing: Image.asset(imagePath, width: 20.0, height: 30.0,),

      title: Text(callerName, style: TextStyle(color: Color(titleColor), fontWeight: FontWeight.bold),  ),

      subtitle: Row(
       children: [
         Image.asset(callTypeImage, width: 10.0, height: 10.0, color: Color(imageColor),),
         SizedBox(width: 5,),
         Text(DateTimeHelper.getFormattedDate(dateTime)),
       ],
      )

    );
  }
}
