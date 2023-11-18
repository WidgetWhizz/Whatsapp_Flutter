import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_design/src/app_colors.dart';
import 'package:whatsapp_design/src/app_textstyles.dart';
import 'package:whatsapp_design/src/features/notifications/notification_helpers/notification_card_item.dart';
import 'package:whatsapp_design/src/features/notifications/notification_helpers/notification_toggle.dart';
import 'package:whatsapp_design/src/strings.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({super.key});

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    bool priorityNotifications = true;
    bool reactionNotifications = true;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 1.w),
            child: Text(
              Strings.messages,
              style: AppTextStyles.subheaderStyle,
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        const NotificationCarditem(
            title: Strings.notificationTone,
            subtitle: Strings.defaultNotification),
        const NotificationCarditem(
            title: Strings.vibrate, subtitle: Strings.defaults),
        const NotificationCarditem(
            title: Strings.popUpNotification, subtitle: Strings.noPopup),
        const NotificationCarditem(
            title: Strings.light, subtitle: Strings.white),
        SizedBox(
          height: 3.h,
        ),
        NotificationToggle(
            title: Strings.usePriority,
            value: priorityNotifications,
            onChanged: (value) => setState(() => priorityNotifications = value),
            subtitle: Strings.showPreview),
        NotificationToggle(
            title: Strings.reactionNotifications,
            value: reactionNotifications,
            onChanged: (value) => setState(() => reactionNotifications = value),
            subtitle: Strings.showNotificationReaction),
        Divider(
          thickness: .1.sp,
          color: AppColors.whiteDivider,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 1.w),
            child: Text(
              Strings.groups,
              style: AppTextStyles.subheaderStyle,
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        const NotificationCarditem(
            title: Strings.notificationTone,
            subtitle: Strings.defaultNotification),
        const NotificationCarditem(
            title: Strings.vibrate, subtitle: Strings.defaults),
        const NotificationCarditem(
            title: Strings.popUpNotification, subtitle: Strings.noPopup),
        const NotificationCarditem(
            title: Strings.light, subtitle: Strings.white),
            SizedBox(
          height: 3.h,
        ),
        NotificationToggle(title: Strings.usePriority, 
        value: priorityNotifications, 
        onChanged: (value) => setState(() => priorityNotifications = value), 
        subtitle: Strings.showPreview),
         NotificationToggle(title: Strings.reactionNotifications, 
        value: reactionNotifications, 
        onChanged: (value) => setState(() => reactionNotifications = value), 
        subtitle: Strings.showNotificationReaction),
           Divider(
  thickness: .1.sp,
  color: AppColors.whiteDivider,
),
 Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 1.w),
            child: Text(
              Strings.calls,
              style: AppTextStyles.subheaderStyle,
              textAlign: TextAlign.left,
            ),
          ),
        ),
       const NotificationCarditem(
          title: Strings.ringtone, 
          subtitle: Strings.defaultRingTone),
          const NotificationCarditem(
            title: Strings.vibrate, 
            subtitle: Strings.defaults),
            SizedBox(
          height: 5.h,
        ),
      ],
    );
  }
}
