import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_design/src/core/constants/Strings.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF075E54),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.security),
            title: Text(Strings.account1),
            onTap: () {
              // Add your action for Security notifications here
            },
          ),
          ListTile(
            leading: Icon(Icons.key),
            title: Text(Strings.account2),
            onTap: () {
              // Add your action for Two-step verification here
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(Strings.account3),
            onTap: () {
              // Add your action for Change number here
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file_rounded),
            title: Text(Strings.account4),
            onTap: () {
              // Add your action for Request account info here
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1),
            title: Text(Strings.account5),
            onTap: () {
              // Add your action for Request account info here
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text(Strings.account6),
            onTap: () {
              // Add your action for Delete my account here
            },
          ),
        ],
      ),
    );
  }
}

