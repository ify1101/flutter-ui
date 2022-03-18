// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp_trial/Model/ChatModel.dart';
import 'package:flutter_svg/svg.dart';


class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
        backgroundColor: Color(0xFF075E54),
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back, size: 24,),
              CircleAvatar(
                radius: 20,
                  child: SvgPicture.asset(
                    widget.chatModel.isGroup ? 'assets/groups1.svg': 'assets/person1.svg',
                    color: Colors.white, height: 50, width: 50,),
                  backgroundColor: Colors.blueGrey
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text('last seen today at 12:02',
                style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
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
    }),
   ]),
      ),
      body: Container(
        height: MediaQuery.of(context).size.width,
        width:  MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ListView(),
             Align(
               alignment: Alignment.bottomCenter,
             child:Row(
                 children: [
                   Container(
                     width: MediaQuery.of(context).size.width -55,
                     child: Card(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(25)
                       ),
                       child: TextFormField(
                         textAlignVertical: TextAlignVertical.center,
                         keyboardType: TextInputType.multiline,
                         maxLines: 5,
                         minLines: 1,
                         decoration: InputDecoration(
                           border: InputBorder.none,
                             hintText: 'Type a message',
                             contentPadding: EdgeInsets.all(5),
                              prefixIcon: IconButton(icon: Icon(Icons.emoji_emotions, color: Color(0xFF075E54),), onPressed: () {},
                              ),
                           suffixIcon: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               IconButton(icon: Icon(Icons.attach_file, color: Color(0xFF075E54)),
                                 onPressed: () {},),
                               IconButton(icon: Icon(Icons.camera_alt, color: Color(0xFF075E54),),

                                 onPressed: () {}, ),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 8, right: 2),
                     child: CircleAvatar(
                       radius: 25,
                       backgroundColor: Color(0xFF075E54),
                       child:  IconButton(icon: Icon(Icons.mic,
                       ), onPressed: () {},),

                     ),
                   )
                 ],
              ),
             ),
          ],
        ),
      ),
    );
  }
}

