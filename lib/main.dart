import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';
import 'package:whatsapp_design/src/features/dashboard_page.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(

        primarySwatch: Colors.green
      ),
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


