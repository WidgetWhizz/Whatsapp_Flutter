import 'package:flutter/material.dart';

class PaymentProfile extends StatelessWidget {
  const PaymentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 90,
      width: 200,
      child:  Card(
        
        child:ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage:
                NetworkImage("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                
              ),
              title: Text("Bensharooq",style: TextStyle(color: Colors.black),),
              subtitle: Text("UPI ID bensharooooq1223@okcciud",style: TextStyle(color: Colors.grey)),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
            )),
    );
  }
}