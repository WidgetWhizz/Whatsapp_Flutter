import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/features/settings/profile.dart';
import 'package:whatsapp_design/src/features/settings/profile_option.dart';
import 'package:whatsapp_design/src/features/settings/setting_option.dart';
import 'package:whatsapp_design/src/strings.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(Strings.settings,textAlign: TextAlign.left,style: TextStyle(color: Colors.white),),automaticallyImplyLeading: true,
      backgroundColor: const Color(0xff075e54),),
      
      body: ListView(
        children: [
          const SizedBox(height: 10,),
          ProfileOption(
              title: Strings.name,
              subtitle: Strings.status,
              trailing: Icons.qr_code_2,
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));

              }),
         const SizedBox(height: 20,),
          SettingOption(
              title: Strings.account,
              subtitle: Strings.securityAndChangeNumber,
              onTap: (){

          }, leading: Icons.key,),
          SettingOption(
              title: Strings.privacy,
              subtitle: Strings.blockAndMessages,
              onTap: (){},
              leading: Icons.lock
          ),
          SettingOption(
              title: Strings.avatar,
              subtitle: Strings.createEdit,
              onTap: (){},
              leading: Icons.person),
          SettingOption(
              title: Strings.chats,
              subtitle: Strings.themeAndWallpaper,
              onTap: (){},
              leading: Icons.chat),
          SettingOption(
              title: Strings.notifications,
              subtitle: Strings.messageGroupCall,
              onTap: (){},
              leading: Icons.notifications),
          SettingOption(
              title: Strings.storageAndData,
              subtitle: Strings.networkUsage,
              onTap: (){},
              leading: Icons.data_usage_outlined),
          SettingOption(
              title: Strings.appLanguage,
              subtitle: Strings.english,
              onTap: (){},
              leading: Icons.circle_outlined),
          SettingOption(
              title: Strings.help,
              subtitle: Strings.helpCentre,
              onTap: (){},
              leading: Icons.arrow_circle_down),
          SettingOption(
              title: Strings.inviteFriend,
              subtitle: "",
              onTap: (){},
              leading: Icons.group),
          const SizedBox(height: 60,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(Strings.from,style: TextStyle(color: Colors.grey),),
                Image.asset("assets/images/meta.jpeg"),
              const SizedBox(height: 60,),
              


            ],
          )


        ],
      ),

    );
  }
}
