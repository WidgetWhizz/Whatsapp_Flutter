import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/Strings.dart';

class PrivacyPage extends StatefulWidget {
  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(Strings.PrivacyTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                Strings.Privacy2,
                style: TextStyle(
                  fontSize: 12.0,

                ),
              ),
            ),
            ListTile(
              title: Text(Strings.Privacy3),
              subtitle: Text(Strings.Privacy4),

              ),

            ListTile(
              title: Text(Strings.Privacy5),
              subtitle: Text(Strings.Privacy6),

            ),
            ListTile(
              title: Text(Strings.Privacy7),
              subtitle: Text(Strings.Privacy8),

            ),
            ListTile(
              title: Text(Strings.Privacy9),
              subtitle: Text(Strings.Privacy10),

            ),
            ListTile(
              title: Text(Strings.Privacy11),
              subtitle: Text(Strings.Privacy12),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: Text(Strings.Privacy13),
              subtitle: Text(Strings.Privacy14),

            ),
            ListTile(
              title: Text(Strings.Privacy15),
              subtitle: null,

            ),
            ListTile(
              title: Text(Strings.Privacy16),
              subtitle: Text(Strings.Privacy17),

            ),
            ListTile(
              title: Text(Strings.Privacy18),
              subtitle: Text(Strings.Privacy19),
            ),
            ListTile(
              title: Text(Strings.Privacy20),
              subtitle: Text(Strings.Privacy21),
            ),
            ListTile(
              title: Text(Strings.Privacy22),
              subtitle: Text(Strings.Privacy23),
            ),
          ],
        ),
      ),
    );
  }
}