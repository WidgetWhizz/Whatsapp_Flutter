import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            title: Text('Security notifications'),
            subtitle: Text('Manage your security notifications'),
            onTap: () {
              // Add your action for Security notifications here
            },
          ),
          ListTile(
            leading: Icon(Icons.key),
            title: Text('Two-step verification'),
            subtitle: Text('Enable two-step verification for added security'),
            onTap: () {
              // Add your action for Two-step verification here
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Change number'),
            subtitle: Text('Change your phone number associated with your account'),
            onTap: () {
              // Add your action for Change number here
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Request account info'),
            subtitle: Text('Request a copy of your account information'),
            onTap: () {
              // Add your action for Request account info here
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete my account'),
            subtitle: Text('Delete your account permanently'),
            onTap: () {
              // Add your action for Delete my account here
            },
          ),
        ],
      ),
    );
  }
}

