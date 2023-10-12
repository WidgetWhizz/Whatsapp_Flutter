import 'package:flutter/material.dart';

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
            Text("    History",
              style: TextStyle(
                color: Color(0xff075E54),
                fontSize: 15,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
              title: Text(
                "Indrajith",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "Sent to you",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              trailing: Column(
                children: [
                  Text('''+100'''),
                  Text(
                    '''Completed''',
                    style: TextStyle(color: Color(0xff075E54)),
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
