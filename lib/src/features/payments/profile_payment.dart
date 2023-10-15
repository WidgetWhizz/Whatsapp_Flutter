import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/images.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';

class PaymentProfile extends StatelessWidget {
  const PaymentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 90,
      width: 200,
      child: Card(
          child: ListTile(
        leading: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(Images.receiverDP),
        ),
        title: Text(
          Strings.receiverName,
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(Strings.upiID, style: TextStyle(color: Colors.grey)),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 20,
        ),
      )),
    );
  }
}
