import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/colors.dart';
import 'package:whatsapp_design/src/core/constants/images.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              Strings.paymentMethods,
              style: TextStyle(
                color: wpgreen,
                fontSize: 15,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(Images.accountDP),
              ),
              title: Text(
                Strings.bankUPI,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                Strings.defaultName,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
