import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/strings.dart';
import 'package:whatsapp_design/src/features/calls/call_link/option_button.dart';

class CallLinkPage extends StatelessWidget {
  const CallLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(Strings.createCallLink),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
               Strings.joinThisCall,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: Icon(
                    Icons.videocam,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  Strings.links,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              children: [
                SizedBox(width: 45,),
                Text(Strings.callType,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 45,),
                Text(
                  Strings.video,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            OptionButton(
              icon: Icons.arrow_outward_sharp,
              label: Strings.sendLinkWhatsapp,
            ),
            SizedBox(height: 16),
            OptionButton(
              icon: Icons.copy,
              label: Strings.copyLink,
            ),
            SizedBox(height: 16),
            OptionButton(
              icon: Icons.share,
              label: Strings.shareLink,
            ),
          ],
        ),
      ),
    );
  }
}

