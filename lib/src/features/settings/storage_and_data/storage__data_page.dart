import 'package:flutter/material.dart';

class StorageDataPage extends StatelessWidget {
  const StorageDataPage({super.key});


  @override
  Widget build(BuildContext context) {
    bool _isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Storage and data",textAlign: TextAlign.left,),
        backgroundColor: Color(0xff075e54),
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.folder),
            title: Text("Manage storage"),
            subtitle: Text("5.9 GB"),
            onTap: () {

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.data_usage_outlined),
            title: Text("Network usage"),
            subtitle: Text("5.9 GB sent. 63.6 GB received"),
            onTap: () {

            },
          ),

    Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: ListTile(

      title: Text("Use less data for calls"),
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

              title: Text("Proxy"),
              subtitle: Text("Off"),
              onTap: () {

              },
            ),
          ),
          Divider(),
          ListTile(

            title: Text("Media auto-download"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Voice messages are always automatically"),
                Text("downloaded"),
              ],
            ),
            onTap: () {

            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: ListTile(

              title: Text("When using mobile data"),
              subtitle: Text("Documents"),
              onTap: () {

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: ListTile(

              title: Text("When connected on Wi-Fi"),
              subtitle: Text("All media"),
              onTap: () {

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: ListTile(

              title: Text("When roaming"),
              subtitle: Text("No media"),
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
