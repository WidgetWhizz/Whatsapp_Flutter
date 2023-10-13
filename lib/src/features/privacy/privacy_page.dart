import 'package:flutter/material.dart';

class WhatsAppPrivacyPage extends StatefulWidget {
  @override
  _WhatsAppPrivacyPageState createState() => _WhatsAppPrivacyPageState();
}

class _WhatsAppPrivacyPageState extends State<WhatsAppPrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Privacy'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Who can see my personal info',
                style: TextStyle(
                  fontSize: 12.0,

                ),
              ),
            ),
            ListTile(
              title: Text('Profile photo'),
              subtitle: Text('My contacts'),

              ),

            ListTile(
              title: Text('Last seen and online'),
              subtitle: Text('Nobody'),

            ),
            ListTile(
              title: Text('About'),
              subtitle: Text('329 contacts excluded'),

            ),
            ListTile(
              title: Text('Status'),
              subtitle: Text('261 contacts selected'),

            ),
            ListTile(
              title: Text('Read receipts'),
              subtitle: Text('If turned off, you won\'t send or receive Read receipts. Read receipts are always sent for group chats.'),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: Text('Disappearing messages'),
              subtitle: Text('Default message timer'),

            ),
            ListTile(
              title: Text('Start new chats with disappearing messages set to your timer'),
              subtitle: null,

            ),
            ListTile(
              title: Text('Groups'),
              subtitle: Text('My contacts'),

            ),
            ListTile(
              title: Text('Live Location'),
              subtitle: Text('None'),
            ),
            ListTile(
              title: Text('Blocked contacts'),
              subtitle: Text('7'),
            ),
            ListTile(
              title: Text('Fingerprint lock'),
              subtitle: Text('Disabled'),
            ),
          ],
        ),
      ),
    );
  }
}