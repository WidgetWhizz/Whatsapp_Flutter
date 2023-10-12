import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/features/dashboard_page.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> swatch = new Map();

    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green
      ),
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
