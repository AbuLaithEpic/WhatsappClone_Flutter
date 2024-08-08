import 'package:flutter/material.dart';
import '../HardCodeChats/ChatNo1.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 28, 35, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        child: Icon(Icons.chat, color: Color.fromRGBO(19, 28, 35, 1),),
      ),
      body: ListView(
        children: [
          ChatNo1(),

        ],

      ),

      // ListView.builder(
      //   itemCount: chats.length,
      //   itemBuilder: (context, index)=>CustomCard(
      //       chatModel : chats[index], key: null,
      //   ),
      // ),
    );
  }
}
