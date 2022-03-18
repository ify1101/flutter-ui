import 'package:flutter/material.dart';
import 'package:myapp_trial/CustomUI/CustomCard.dart';
import 'package:myapp_trial/Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
              name: 'Peace',
              icon: 'groups1.svg',
              isGroup: false,
              time: '14:02',
              currentMessage:'Hi babe'),
    ChatModel(
        name: 'Anastasia',
        icon: 'person1.svg',
        isGroup: true,
        time: '11:05',
        currentMessage:'You ready for work'),
    ChatModel(
        name: 'Shehu',
        icon: 'person1.svg',
        isGroup: false,
        time: '14:02',
        currentMessage: 'What time?'),
    ChatModel(
        name: 'Chi',
        icon: 'groups1.svg',
        isGroup: true,
        time: '14:02',
        currentMessage: 'Hi Everyone')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
         onPressed: (){},
        child: Icon(Icons.chat, ),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
