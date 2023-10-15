import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/colors.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';

class PaymentSend extends StatelessWidget {
  const PaymentSend({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 200,
      child: Card(
          child: Column(
        children: const [
          ListTile(
            leading: Icon(
              Icons.currency_rupee_outlined,
              color: wpgreenAccent,
              size: 20,
            ),
            title: Text(
              Strings.sendpay,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.qr_code,
              color: wpgreenAccent,
              size: 20,
            ),
            title: Text(
              Strings.qrcode,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      )),
    );
  }
}
