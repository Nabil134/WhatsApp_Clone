import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/message.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/noimage.jpg'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text('Nabil'),
          ),
        ]),
        actions: [
          IconButton(
            onPressed: () {
              print('Video Call Button Clicked');
            },
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {
              print(' Call Button Clicked');
            },
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {
              print('More Vert Button Clicked');
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: MessagePage(), //MessagePage
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16),
            // color: Colors.red,
            height: 100,
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    maxLines: 5,
                    minLines: 1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      hintText: 'Type a message',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
