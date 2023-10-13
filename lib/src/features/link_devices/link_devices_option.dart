import 'package:flutter/material.dart';

class LinkDeviceOption extends StatelessWidget {
  const LinkDeviceOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children: [
          Image.asset("assets/images/link_devices.jpg",height: 350,width: double.maxFinite,),

          Center(
            child: RichText(text: const TextSpan(
              children:[TextSpan(
                text:"Use WhatsApp on Web, Desktop, and other devices.",style: TextStyle(color: Colors.grey)
              ),
                TextSpan(
                  text:"Learn more",style: TextStyle(color: Colors.blue),
                )


              ]

            )),
          ),
          const SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SizedBox(
              height: 50,
              width: double.maxFinite,
              child: ElevatedButton(onPressed: (){},
                  child: const Text("Link a device"),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder())),
            ),
          ),
          const SizedBox(height:20)

        ],
      ) ,
    );
  }
}
