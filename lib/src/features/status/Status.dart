import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/helper/datetime-helper.dart';
import 'package:whatsapp_design/src/features/status/status_list_item.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 15,
        ),
        ListTile(
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-768x768.jpg'),
              radius: 40,
              child: Stack(children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.green,
                  ),
                ),
              ])),

          // CircleAvatar(
          //   backgroundImage: NetworkImage(
          //       'https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-768x768.jpg'),
          //   radius: 40,
          // ),
          // Positioned(
          //   child: RawMaterialButton(
          //     fillColor: Colors.green,
          //     child: Icon(Icons.add_circle, color: Colors.white,),
          //     padding: EdgeInsets.all(5.0),
          //     shape: CircleBorder(),
          //   ),
          // ),
          title:
              Text("My Status", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(DateTimeHelper.getFormattedDate(DateTime.now())),
          trailing: Image.asset(
            'assets/images/3dots_icon.jpg',
            width: 30,
            height: 20,
            color: Colors.green,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            margin: EdgeInsets.only(left: 15),
            child: Text("Recent updates",
                style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(
          height: 5,
        ),
        StatusListItem(
            contactName: "Ishan Pai",
            dateTime: DateTime.now(),
            imagePath: 'manhattan_bridge.jpg'),
        StatusListItem(
            contactName: "Aditya Shigwan",
            dateTime: DateTime(2023, 9, 17, 11, 26),
            imagePath: 'gate_way_of_india.jpg'),
        SizedBox(
          height: 15,
        ),
        Container(
            margin: EdgeInsets.only(left: 15),
            child: Text("Viewed updates",
                style: TextStyle(fontWeight: FontWeight.bold))),
        StatusListItem(
            contactName: "Anlin P Jose",
            dateTime: DateTime.now(),
            imagePath: 'manhattan_bridge.jpg'),
        StatusListItem(
            contactName: "Abin Berley",
            dateTime: DateTime(2023, 9, 17, 11, 26),
            imagePath: 'gate_way_of_india.jpg'),
      ],
    );
  }
}
