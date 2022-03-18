import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp_trial/Model/ChatModel.dart';
import 'package:myapp_trial/screens/IndividualPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualPage(chatModel: chatModel,)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              child: SvgPicture.asset(chatModel.isGroup ? 'assets/groups1.svg': 'assets/person1.svg',
                color: Colors.white, height: 50, width: 50,),
              backgroundColor: Colors.black12 ,
            ),
            title: Text(
                chatModel.name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
            subtitle: Row(
              children: [
                Icon(Icons.done_all, color: Colors.black12,),
                SizedBox( width: 5,),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(
                      fontSize: 13),),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 20),
            child: Divider(thickness: 1,),
          )
        ],
      ),
    );
  }
}
