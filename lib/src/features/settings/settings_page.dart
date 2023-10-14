import 'package:flutter/material.dart';

import 'package:whatsapp_design/src/features/privacy/privacy_page.dart';
import 'package:whatsapp_design/src/features/settings/profile_option.dart';
import 'package:whatsapp_design/src/features/settings/setting_option.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings",textAlign: TextAlign.left,style: TextStyle(color: Colors.white),),automaticallyImplyLeading: true,
      backgroundColor: const Color(0xff075e54),),
      
      body: ListView(
        children: [
          const SizedBox(height: 10,),
          ProfileOption(
              title: " Abin Berly",
              subtitle: " To infinity and beyond",
              trailing: Icons.qr_code_2,
              onTap: (){}),
         const SizedBox(height: 20,),
          SettingOption(
              title: "Account",
              subtitle: "Security notifications,change number",
              onTap: (){
                }, leading: Icons.key,),
          SettingOption(
              title: "Privacy",
              subtitle: "Block contact,disappearing messages",
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPage()));
              },
              leading: Icons.lock
          ),
          SettingOption(
              title: "Avatar",
              subtitle: "Create,edit,profile photo",
              onTap: (){},
              leading: Icons.person),
          SettingOption(
              title: "Chats",
              subtitle: "Theme,wallpapers,chat history",
              onTap: (){},
              leading: Icons.chat),
          SettingOption(
              title: "Notifications",
              subtitle: "Message,group & call tones",
              onTap: (){},
              leading: Icons.notifications),
          SettingOption(
              title: "Storage and data",
              subtitle: "Network usage,auto-download",
              onTap: (){},
              leading: Icons.data_usage_outlined),
          SettingOption(
              title: "App language",
              subtitle: "English(device's language)",
              onTap: (){},
              leading: Icons.circle_outlined),
          SettingOption(
              title: "Help",
              subtitle: "Help centre, contact us, privacy policy",
              onTap: (){},
              leading: Icons.arrow_circle_down),
          SettingOption(
              title: "Invite a friend",
              subtitle: "",
              onTap: (){},
              leading: Icons.group),
          const SizedBox(height: 60,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("from",style: TextStyle(color: Colors.grey),),
              Image.network("https://static.vecteezy.com/system/resources/previews/022/100/699/original/meta-logo-transparent-free-png.png",height: 100,width: 200,),
              const SizedBox(height: 60,),
              


            ],
          )


        ],
      ),

    );
  }
}
