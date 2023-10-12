import 'package:flutter/material.dart';

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
              "    Payment methods",
              style: TextStyle(
                color: Color(0xff075E54),
                fontSize: 15,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://play-lh.googleusercontent.com/3k0f2yWl15mhkyltVQoqwmfRcm6ywTDYOttNHusElScrqjxYHLK82oVnjt3wQJQyPw"),
              ),
              title: Text(
                "ICICI Bank **90397347 via UPI",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "Default",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
