import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_design/src/core/constants/colors.dart';
import 'package:whatsapp_design/src/features/settings/profile_option.dart';
import 'package:whatsapp_design/src/features/settings/setting_option.dart';
import 'package:whatsapp_design/src/features/settings/storage_and_data/storage__data_page.dart';
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
      backgroundColor: wpgreen),
      
      body: ListView(
        children: [
           SizedBox(height: 1.h,),
          ProfileOption(
              title: Strings.name,
              subtitle: Strings.status,
              trailing: Icons.qr_code_2,
              onTap: (){}),
          SizedBox(height: 2.h,),
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
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StorageDataPage()));
              },
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
           SizedBox(height: 6.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(Strings.from,style: TextStyle(color: Colors.grey),),
                Image.asset("assets/images/meta.jpeg",height:10.h,width: 10.w,),
               SizedBox(height: 6.h,),
              


            ],
          )


        ],
      ),

    );
  }
}
