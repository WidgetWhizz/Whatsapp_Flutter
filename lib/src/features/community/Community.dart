import 'package:flutter/material.dart';


class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<Community> communities = [
    Community(name: 'Devtown Backend Web Development', lastMessage: 'The class has already started', lastMessageDate: DateTime.parse('2023-08-16')),
    Community(name: 'Devtown Backend Web Development', lastMessage: 'The class has already started', lastMessageDate: DateTime.parse('2023-08-16')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: communities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(communities[index].name),
            subtitle: Text(communities[index].lastMessage),
            trailing: Text('${communities[index].lastMessageDate.day}/${communities[index].lastMessageDate.month}/${communities[index].lastMessageDate.year}'),
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

  Community({required this.name, required this.lastMessage, required this.lastMessageDate});
}
