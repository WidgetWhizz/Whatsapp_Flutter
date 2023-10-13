import 'package:flutter/material.dart';
class LinkedDevicesStatus extends StatelessWidget {
  const LinkedDevicesStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Device Status",style: TextStyle(color: Colors.blueGrey,fontSize: 12,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Tap a device to log out.",style: TextStyle(color: Colors.blueGrey,fontSize: 13,fontWeight: FontWeight.normal)),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/firefox-icon-248x256-cskk501i.png"),
            ),
            title: Text("Firefox(Ubuntu)",style: TextStyle(color: Colors.black,fontSize: 15,)),
            subtitle:Text("Last active yesterday at 11:02 pm ",style: TextStyle(color: Colors.grey,fontSize: 12,))),


        ],
      ),
    );
  }
}
