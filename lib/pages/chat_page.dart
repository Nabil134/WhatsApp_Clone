import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/pages/chat_detail_page.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, i) => Column(
          children: [
            Divider(height: 10),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage:
                    AssetImage(chatData[i].avatar ?? 'images/noimage.jpg'),
              ),
              title: Text(
                chatData[i].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                chatData[i].message,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                chatData[i].time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatDetailPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
