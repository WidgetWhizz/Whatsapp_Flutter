import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/strings.dart';
class LinkedDevicesStatus extends StatelessWidget {
  const LinkedDevicesStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(Strings.deviceStatus,style: TextStyle(color: Colors.blueGrey,fontSize: 12,fontWeight: FontWeight.bold)),
          ),

          Padding(
            padding:const  EdgeInsets.only(left: 18.0),
            child: Text(Strings.tapDevice,style: TextStyle(color: Colors.blueGrey,fontSize: 13,fontWeight: FontWeight.normal)),
          ),
          const  SizedBox(height: 20.0,),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/firefox.png"),
            ),
            title: Text(Strings.fireFox,style: TextStyle(color: Colors.black,fontSize: 15,)),
            subtitle:Text(Strings.lastActivity,style: TextStyle(color: Colors.grey,fontSize: 12,))),


        ],
      ),
    );
  }
}
