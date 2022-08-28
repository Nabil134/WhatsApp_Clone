import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call_page.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';
import 'package:whatsapp_clone/pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                print('Search Button');
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print('More Vert Button');
              },
              icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Camera"),
          ChatPage(), //ChatPage
          StatusPage(), //StatusPage
          CallPage(), //CallPage
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

/*_getFAB function start here */
  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          backgroundColor: Color(0xff25d366),
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: (() {
            print('Open Chat');
          }));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: Color(0xff25d366),
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: (() {
            print('Open Camera');
          }));
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: Color(0xff25d366),
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: (() {
            print('Open Call');
          }));
    } else {
      return null;
    }
  }
  /*_getFAB function end here */
}
