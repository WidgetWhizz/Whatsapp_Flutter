import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';
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
              backgroundImage: NetworkImage(Strings.chat1DP),
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
          title: const Text(Strings.statusLabel,
              style: TextStyle(fontWeight: FontWeight.bold)),
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
            child: const Text(Strings.statusUpdateLabel,
                style: TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(
          height: 5,
        ),
        StatusListItem(
            contactName: Strings.updateStatus1Name,
            dateTime: DateTime.now(),
            imagePath: 'manhattan_bridge.jpg'),
        StatusListItem(
            contactName: Strings.updateStatus2Name,
            dateTime: DateTime(2023, 9, 17, 11, 26),
            imagePath: 'gate_way_of_india.jpg'),
        SizedBox(
          height: 15,
        ),
        Container(
            margin: EdgeInsets.only(left: 15),
            child: const Text(Strings.statusOldLabel,
                style: TextStyle(fontWeight: FontWeight.bold))
        ),
        StatusListItem(
            contactName: Strings.oldStatus1Name,
            dateTime: DateTime.now(),
            imagePath: 'manhattan_bridge.jpg'),
        StatusListItem(
            contactName: Strings.oldStatus2Name,
            dateTime: DateTime(2023, 9, 17, 11, 26),
            imagePath: 'gate_way_of_india.jpg'),
      ],
    );
  }
}
