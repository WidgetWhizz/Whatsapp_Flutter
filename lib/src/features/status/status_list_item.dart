import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/helper/datetime-helper.dart';

class StatusListItem extends StatelessWidget {
  final String contactName;
  final DateTime dateTime;
  final String imagePath;
  
  const StatusListItem({
    super.key,
    required this.contactName,
    required this.dateTime,
    required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.green,
        child: CircleAvatar(
          radius: 38,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
      title: Text(contactName,  style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(DateTimeHelper.getFormattedDate(dateTime)),
    );
  }
}
