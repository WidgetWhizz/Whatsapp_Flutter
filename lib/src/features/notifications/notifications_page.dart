import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_design/src/app_colors.dart';
import 'package:whatsapp_design/src/app_textstyles.dart';
import 'package:whatsapp_design/src/colors.dart';
import 'package:whatsapp_design/src/features/notifications/notification_helpers/notification_card.dart';
import 'package:whatsapp_design/src/features/notifications/notification_helpers/notification_toggle.dart';
import 'package:whatsapp_design/src/strings.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool playConversationTones = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(Strings.notifications,style: AppTextStyles.headerStyle,),
      automaticallyImplyLeading: true,
      backgroundColor: wpgreen,
      actions: const [
        Icon(Icons.settings,color: AppColors.whiteColor,)
      ],
      
      ),
      body: ListView(
        children: [
          NotificationToggle(
            title: Strings.conversationTones, 
            value: playConversationTones, 
            onChanged: (value) => setState(() => playConversationTones = value), 
            subtitle: Strings.playSoundsInandOut),
            Divider(
  thickness: .1.sp,
  color: AppColors.whiteDivider,
),
           const NotificationCard(),
        
        ],
      ),

    );
  }
}