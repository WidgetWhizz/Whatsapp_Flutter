import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/features/payments/payment_history.dart';
import 'package:whatsapp_design/src/features/payments/payment_method.dart';
import 'package:whatsapp_design/src/features/payments/payment_send.dart';
import 'package:whatsapp_design/src/features/payments/profile_payment.dart';

import 'common_payment.dart';


class WhatsAppPayment extends StatefulWidget {
  const WhatsAppPayment({super.key});

  @override
  State<WhatsAppPayment> createState() => _WhatsAppPaymentState();
}

class _WhatsAppPaymentState extends State<WhatsAppPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Payments",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xff075E54),
        automaticallyImplyLeading: true,
      ),
      body: ListView(
        children: const [
          
          PaymentProfile(),
          PaymentSend(),
          PaymentHistory(),
          PaymentMethod(),
          CommonPayment(
            leading: Icons.add_circle_outline,
             title: "Add payment method"),
             CommonPayment(
            leading: Icons.help_outline_rounded,
             title: "Help"),
             CommonPayment(
            leading: Icons.mail_outline,
             title: "Invite others")
        ],
      ),
    );
  }
}