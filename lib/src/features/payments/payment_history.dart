import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/colors.dart';
import 'package:whatsapp_design/src/core/constants/images.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.history,
              style: TextStyle(
                color: Color(0xff075E54),
                fontSize: 15,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(Images.bankDP),
              ),
              title: Text(
                Strings.senderName,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                Strings.historySubTitle,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              trailing: Column(
                children: [
                  Text(Strings.money),
                  Text(
                    Strings.completed,
                    style: TextStyle(color: wpgreenAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
