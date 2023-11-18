import 'package:flutter/material.dart';
import 'package:whatsapp_design/src/core/constants/Strings.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<Community> communities = [
    Community(
        name: Strings.communityName1,
        lastMessage: '',
        lastMessageDate: DateTime.parse('2023-08-16'),
        imageAsset: 'assets/images/img.png',
        unreadCount: 0),
    Community(
        name: Strings.communityName6,
        lastMessage: '',
        lastMessageDate: DateTime.parse('2023-08-16'),
        imageAsset: 'assets/images/devtown.png',
        unreadCount: 0),
    Community(
        name: Strings.communityName2,
        lastMessage: Strings.communitylastMessage1,
        lastMessageDate: DateTime.parse('2023-08-16'),
        imageAsset: 'assets/images/speaker.jpeg',
        unreadCount: 0),
    Community(
        name: Strings.communityName3,
        lastMessage: ' ',
        lastMessageDate: DateTime.parse('2023-08-16'),
        imageAsset: 'assets/images/img_1.png',
        unreadCount: 0),
    Community(
        name: Strings.communityName4,
        lastMessage: '',
        lastMessageDate: DateTime.parse('2023-08-16'),
        imageAsset: 'assets/images/img_2.png',
        unreadCount: 0),
    Community(
        name: Strings.communityName5,
        lastMessage: Strings.communitylastMessage2,
        lastMessageDate: DateTime.parse('2023-08-16'),
        imageAsset: 'assets/images/speaker.jpeg',
        unreadCount: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: communities.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {


              print('You tapped on ${communities[index].name}');
            },
            child: ListTile(
              leading: Container(
                width: 60,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(95),
                  child: Image.asset(
                    communities[index].imageAsset,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              title: Text(communities[index].name),
              subtitle: Text(communities[index].lastMessage),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      '${communities[index].lastMessageDate.day}/${communities[index].lastMessageDate.month}/${communities[index].lastMessageDate.year}'),
                  SizedBox(width: 10),
                  if (communities[index].unreadCount > 0)
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 20,
                      child: Text(
                        communities[index].unreadCount.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class Community {
  final String name;
  final String lastMessage;
  final DateTime lastMessageDate;
  final String imageAsset;
  final int unreadCount;

  Community(
      {required this.name,
        required this.lastMessage,
        required this.lastMessageDate,
        required this.imageAsset,
        required this.unreadCount});
}