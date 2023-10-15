import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/colors.dart';
import 'package:whatsapp_design/src/core/constants/images.dart';
import 'package:whatsapp_design/src/core/constants/option_menu_enum.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';
import 'package:whatsapp_design/src/features/calls/calls.dart';
import 'package:whatsapp_design/src/features/chats/chats.dart';
import 'package:whatsapp_design/src/features/community.dart';
import 'package:whatsapp_design/src/features/status/status.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: wpgreen,
          title: Text(Strings.appTitle),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton<MenuOptions>(
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: MenuOptions.newGroup,
                  child: Text(Strings.option1),
                ),
                const PopupMenuItem(
                  value: MenuOptions.newBroadcast,
                  child: Text(Strings.option2),
                ),
                const PopupMenuItem(
                  value: MenuOptions.linkedDevices,
                  child: Text(Strings.option3),
                ),
                const PopupMenuItem(
                  value: MenuOptions.starredMessages,
                  child: Text(Strings.option4),
                ),
                const PopupMenuItem(
                  value: MenuOptions.payments,
                  child: Text(Strings.option5),

                ),
                const PopupMenuItem(
                  value: MenuOptions.settings,
                  child: Text(Strings.option6),
                ),
              ],
              onSelected: (value) {
                switch (value) {
                  case MenuOptions.newGroup:
                    break;
                  case MenuOptions.newBroadcast:
                    break;
                  case MenuOptions.linkedDevices:
                    break;
                  case MenuOptions.starredMessages:
                    break;
                  case MenuOptions.payments:
                    break;
                  case MenuOptions.settings:
                    break;
                }
              },
            )
          ],
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Image.asset(
                    Images.communityIconImagePath,
                    color: Colors.white,
                    width: 30,
                    height: 20,
                  ),
                ),
                const Tab(
                  text: Strings.tab2,
                ),
                const Tab(
                  text: Strings.tab3,
                ),
                const Tab(
                  text: Strings.tab4,
                ),
              ])),
      body: SafeArea(
          child: TabBarView(
        children: [Community(), Chats(), Status(), Calls()],
        controller: tabController,
      )),
    );
  }
}
