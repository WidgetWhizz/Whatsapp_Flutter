import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/strings.dart';

class LinkDeviceOption extends StatelessWidget {
  const LinkDeviceOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children: [
          Image.asset("assets/images/link_devices.jpg",height: MediaQuery.of(context).size.height * 0.25,width: MediaQuery.of(context).size.width,),

          Center(
            child: RichText(text: TextSpan(
              children:[TextSpan(
                text:Strings.useWhatsapp,style: TextStyle(color: Colors.grey)
              ),
                TextSpan(
                  text:Strings.learnMore,style: TextStyle(color: Colors.blue),
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
                  child:  Text(Strings.linkDevice),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder())),
            ),
          ),
          const SizedBox(height:20)

        ],
      ) ,
    );
  }
}
