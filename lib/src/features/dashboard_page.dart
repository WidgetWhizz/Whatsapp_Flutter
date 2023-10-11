import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/features/calls/Calls.dart';
import 'package:whatsapp_design/src/features/chats/Chats.dart';
import 'package:whatsapp_design/src/features/community/Community.dart';
import 'package:whatsapp_design/src/features/status/Status.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          bottom: TabBar(
            tabs:[
              Tab(icon: Image.asset('assets/images/community_icon.png', color: Colors.white, width: 30, height: 20,),),
              Tab(text: "Chats",),
              Tab(text: "Status",),
              Tab(text: "Calls",),
          ]
          )
        ),
        body: SafeArea(
            child: TabBarView(
                children:[
                  CommunityPage(),
                  Chats(),
                  Status(),
                  Calls()
                ]

            )
        ),

    ),
      );
  }
}
