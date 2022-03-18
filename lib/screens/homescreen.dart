import 'package:flutter/material.dart';
import 'package:myapp_trial/pages/ChatPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text('WhatsApp '),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
              itemBuilder: (BuildContext context ){
            return [
              PopupMenuItem(
                  child: Text('New group'),
                  value: 'New group'),
              PopupMenuItem(
                  child: Text('New broadcast'),
                  value: 'New broadcast'),
              PopupMenuItem(
                  child: Text('Whatsapp Web'),
                  value: 'Whatsapp Web'),
              PopupMenuItem(
                  child: Text('Starred message'),
                  value: 'Starred message'),
              PopupMenuItem(
                  child: Text('Settings'),
                  value: 'Settings')
            ];
          })
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('camera'),
          ChatPage(),
          Text('status'),
          Text('calls'),
        ],
      ),
    );

  }
}
