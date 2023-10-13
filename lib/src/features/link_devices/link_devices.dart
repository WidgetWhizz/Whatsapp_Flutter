import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/colors.dart';
import 'package:whatsapp_design/src/features/link_devices/link_devices_option.dart';
import 'package:whatsapp_design/src/features/link_devices/linked_devices_status.dart';
import 'package:whatsapp_design/src/strings.dart';


class LinkDevices extends StatefulWidget {
  const LinkDevices({Key? key}) : super(key: key);


  @override
  State<LinkDevices> createState() => _LinkDevicesState();
}

class _LinkDevicesState extends State<LinkDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(Strings.linkedDevices),
      backgroundColor: wpgreen,
    ),
      body: ListView(
        children: [
          LinkDeviceOption(),
          LinkedDevicesStatus(),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.lock,size: 13,color: Colors.grey,),
              SizedBox(width: 10,),
              Center(
                child: RichText(text:  TextSpan(
                    children:[
                      TextSpan(
                        text:Strings.personalMessages,style: TextStyle(color: Colors.grey)
                    ),
                      TextSpan(
                        text:Strings.endToEnd,style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                          text:Strings.onAllDevices,style: TextStyle(color: Colors.grey)
                      ),


                    ]

                )),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
