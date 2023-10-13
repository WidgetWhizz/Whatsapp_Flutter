import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';
import 'package:whatsapp_design/src/core/helper/callType-helper.dart';
import 'package:whatsapp_design/src/core/helper/titleColor-helper.dart';
import 'package:whatsapp_design/src/features/calls/calls_list_item.dart';

class Calls extends StatelessWidget {
  static List<String> calltype = [
    Strings.callType1,
    Strings.callType2,
    Strings.callType3,
    Strings.callType4
  ];

  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(7.0),
            decoration:
                BoxDecoration(color: Colors.green, shape: BoxShape.circle),
            child: Icon(
              Icons.link,
              color: Colors.white,
            ),
          ),
          title: Text(
            Strings.callLinkLabel,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(Strings.callLinkSubTitle),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(Strings.statusUpdateLabel,
                style: TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(
          height: 5,
        ),
        CallList(
          callerName: Strings.caller1,
          titleColor: TitleColorHelper.getTitleColor(calltype[0]),
          callTypeImage: CallTypeHelper.callType(calltype[0]),
          userImage:
              'https://www.epicscotland.com/wp-content/uploads/2018/01/Business-Headshot_002.jpg',
          dateTime: DateTime(2023, 9, 12, 10, 10),
          imageColor: TitleColorHelper.getTitleColor(calltype[0]),
          imagePath: 'assets/images/video_call2.png',
        ),
        CallList(
          callerName: Strings.caller2,
          titleColor: TitleColorHelper.getTitleColor(calltype[2]),
          callTypeImage: CallTypeHelper.callType(calltype[2]),
          userImage:
              'https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-768x768.jpg',
          dateTime: DateTime(2023, 9, 12, 5, 10),
          imageColor: TitleColorHelper.getTitleColor(calltype[2]),
          imagePath: 'assets/images/green_call.png',
        ),
        CallList(
          callerName: Strings.caller2,
          titleColor: TitleColorHelper.getTitleColor(calltype[2]),
          callTypeImage: CallTypeHelper.callType(calltype[2]),
          userImage:
          'https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-768x768.jpg',
          dateTime: DateTime(2023, 9, 12, 5, 10),
          imageColor: TitleColorHelper.getTitleColor(calltype[2]),
          imagePath: 'assets/images/green_call.png',
        ),
        CallList(
          callerName: Strings.caller2,
          titleColor: TitleColorHelper.getTitleColor(calltype[2]),
          callTypeImage: CallTypeHelper.callType(calltype[2]),
          userImage:
          'https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-768x768.jpg',
          dateTime: DateTime(2023, 9, 12, 5, 10),
          imageColor: TitleColorHelper.getTitleColor(calltype[2]),
          imagePath: 'assets/images/green_call.png',
        ),
      ],
    );
  }
}
