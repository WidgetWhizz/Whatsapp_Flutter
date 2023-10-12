import 'package:flutter/material.dart';

class CallLinkPage extends StatelessWidget {
  const CallLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Call Link"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Anyone with WhatsApp can use this link to join this call. Only share it with people you trust.",
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
                  "https://call.whatsapp.com/video/geDRT3yDAUsRMuod9z9Vz2",
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
                Text(
                  "Call Type",
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
                  "Video",
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
              label: "Send link via WhatsApp",
            ),
            SizedBox(height: 16),
            OptionButton(
              icon: Icons.copy,
              label: "Copy link",
            ),
            SizedBox(height: 16),
            OptionButton(
              icon: Icons.share,
              label: "Share Link",
            ),
          ],
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final dynamic icon;
  final String label;


  const OptionButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = Icon(Icons.error, size: 30, color: Colors.red);

    if (icon is IconData) {
      iconWidget = Icon(icon, size: 30, color: Colors.grey);
    } else if (icon is Image) {
      iconWidget = icon;
    }

     return Row(
      children: [
        iconWidget,
         SizedBox(width: 16),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}

