import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/colors.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';

class StorageDataPage extends StatelessWidget {
  const StorageDataPage({super.key});


  @override
  Widget build(BuildContext context) {
    bool _isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.storageData,textAlign: TextAlign.left,),
        backgroundColor: wpgreen,
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.folder),
            title: Text(Strings.manageStorage),
            subtitle: Text(Strings.dataUsed),
            onTap: () {

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.data_usage_outlined),
            title: Text(Strings.networkUsage),
            subtitle: Text(Strings.sendReceived),
            onTap: () {

            },
          ),

    Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: ListTile(

      title: Text(Strings.lessDataCalls),
      trailing: Switch(
      value: _isSwitched,
      onChanged: (bool value) {

      setState(() {
      _isSwitched = value;
      });

      if (_isSwitched) {

      } else {

      }
      },
      ),
      onTap: () {

      },
      ),
    ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: ListTile(

              title: Text(Strings.proxy),
              subtitle: Text(Strings.off),
              onTap: () {

              },
            ),
          ),
          Divider(),
          ListTile(

            title: Text(Strings.autoDownload),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(Strings.voiceMessagesAuto),
                Text(Strings.downloaded),
              ],
            ),
            onTap: () {

            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: ListTile(

              title: Text(Strings.whenMobileData),
              subtitle: Text(Strings.documents),
              onTap: () {

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: ListTile(

              title: Text(Strings.whenWifi),
              subtitle: Text(Strings.allMedia),
              onTap: () {

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: ListTile(

              title: Text(Strings.whenRoaming),
              subtitle: Text(Strings.noMedia),
              onTap: () {

              },
            ),
          ),



        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
