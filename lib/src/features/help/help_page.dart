import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/Strings.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.help1),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(Strings.help2),
            onTap: () {
              // Open the contact us page
            },

          ),
          ListTile(
            leading: Icon(Icons.people_rounded),
            title: Text(Strings.help3),
            subtitle: Text(Strings.help4),
            onTap: () {
              // Open the FAQ page
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file_rounded),
            title: Text(Strings.help5),
            onTap: () {
              // Open the terms and privacy policy page
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text(Strings.help6),
            onTap: () {
              // Open the app info page
            },
          ),
        ],
      ),
    );
  }
}