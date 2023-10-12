import 'package:flutter/material.dart';

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
              color: Color(0xff075E54),
              size: 20,
            ),
            title: Text(
              "Send Payment",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.qr_code,
              color: Color(0xff075E54),
              size: 20,
            ),
            title: Text(
              "Scan Payment QR code",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      )),
    );
  }
}
