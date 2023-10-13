import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/strings.dart';

import '../../colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.profile), backgroundColor: Color(0xff075e54),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profiles.jpeg"),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: wpgreen,
                      radius: 20,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(Strings.name),
              subtitle: Text(Strings.notUserName),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(Strings.about),
              subtitle: Text(Strings.status),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(Strings.phone),
              subtitle: Text(Strings.phoneNo),

            ),
          ],
        ),
      ),
    );
  }
}


