import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../HardCodeChats/ConstsChat.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatNo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatNo1Route()),);
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/gojo_wallpaper.jpg",),
        ),
        title: Text(
          'Orang 1',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.done_all, color: Colors.grey, size: 17,),
            Text(
             'Apa khabar 1',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '11:11',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Transform.rotate(
                angle:30 * pi / 180,
                child: Icon(Icons.push_pin, color: Colors.grey,)),
          ],
        ),

      ),
    );
  }
}

class ChatNo1Route extends StatefulWidget {
  ChatNo1Route({super.key});

  @override
  State<ChatNo1Route> createState() => _ChatNo1RouteState();
}

class _ChatNo1RouteState extends State<ChatNo1Route> {
  List<Message> messages = [
    Message(
        text: 'ok',
        date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
        isSentByMe: false,
    ),
    Message(
        text: 'aku tak cari lagi... igt nk cari kerja front end / back end developer',
        date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
        isSentByMe: true,
    ),
    Message(
      text: 'ok',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'aku tak cari lagi... igt nk cari kerja front end / back end developer',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
      isSentByMe: true,
    ),
    Message(
      text: 'ok',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'aku tak cari lagi... igt nk cari kerja front end / back end developer',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
      isSentByMe: true,
    ),
    Message(
      text: 'ok',
      date: DateTime.now().subtract(Duration(days: 4, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'aku tak cari lagi... igt nk cari kerja front end / back end developer',
      date: DateTime.now().subtract(Duration(days: 5, minutes: 4)),
      isSentByMe: true,
    ),
    Message(
      text: 'ok',
      date: DateTime.now().subtract(Duration(days: 6, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'aku tak cari lagi... igt nk cari kerja front end / back end developer',
      date: DateTime.now().subtract(Duration(days: 6, minutes: 4)),
      isSentByMe: true,
    ),
    Message(
      text: 'ok',
      date: DateTime.now().subtract(Duration(days: 8, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'aku tak cari lagi... igt nk cari kerja front end / back end developer',
      date: DateTime.now().subtract(Duration(days: 9, minutes: 4)),
      isSentByMe: true,
    ),
    Message(
      text: 'ok',
      date: DateTime.now().subtract(Duration(days: 9, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'aku tak cari lagi... igt nk cari kerja front end / back end developer',
      date: DateTime.now().subtract(Duration(days: 10, minutes: 4)),
      isSentByMe: true,
    ),

  ].reversed.toList();

  bool sendButton = false;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(64, 151, 157, 1.0),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(31, 44, 52, 1),
        leadingWidth: 70,
        titleSpacing: 3,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage("assets/gojo_wallpaper.jpg",),
              ),
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orang1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              ('online'),
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
        actions: [

          Wrap(
            spacing: -10,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.videocam, size: 25,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call, size: 20,),
              ),
              PopupMenuButton<String>(
                  onSelected: (value){
                    print(value);
                  },
                  itemBuilder: (BuildContext context){
                    return [
                      PopupMenuItem(
                        child: Text('New group'),
                        value: "New group",
                      ),
                      PopupMenuItem(
                        child: Text('New broadcast'),
                        value: "New broadcast",
                      ),
                      PopupMenuItem(
                        child: Text('Linked devices'),
                        value: "Linked devices",
                      ),
                      PopupMenuItem(
                        child: Text('Starred messages'),
                        value: "Starred messages",
                      ),PopupMenuItem(
                        child: Text('Settings'),
                        value: "Settings",
                      ),
                    ];
                  }),
            ],
          ),
        ],
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/whatsapp_default_background.png'
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height-145,
                child: GroupedListView<Message, DateTime>(
                  shrinkWrap: true,
                  elements: messages,
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  groupBy: (message) => DateTime(
                    message.date.year,
                    message.date.month,
                    message.date.day,
                  ),
                  groupHeaderBuilder: (Message message) => SizedBox(
                    height: 40,
                    child: Center(
                      child: Card(
                        color: Color.fromRGBO(31, 44, 52, 1.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10,4,10,4),
                          child: Text(
                            DateFormat.yMMMd().format(message.date),
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemBuilder: (context, Message message) => Align(
                    alignment: message.isSentByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                    child: ConstrainedBox(constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width-45,
                    ),
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        color: message.isSentByMe
                          ? Color.fromRGBO(0, 93, 75, 1.0)
                          : Color.fromRGBO(31, 44, 52, 1),
        
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 30, 20),
                              child: Text(message.text, style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                wordSpacing: 0,
                              ), ),
                          ),
                            message.isSentByMe
                            ? Positioned(
                              bottom: 4,
                              right: 10,
                              child: Row(
                                children: [
                                  Text(
                                    'message.date',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Icon(
                                    Icons.done_all,
                                    size:18,
                                    color: Colors.lightBlue,
                                  ),
                                ],
                              ),
                            )
                            : Positioned(
                              bottom: 4,
                              right: 10,
                              child: Text(
                                '20:18',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                        ]),
                      ),
                    ),
                  ),
        
        
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    SizedBox(width: 4),
                    Container(
                      width:MediaQuery.of(context).size.width-64,
                      child: Card(
                        color: Color.fromRGBO(31, 44, 52, 1.0),
                        margin: EdgeInsets.fromLTRB(2, 0, 2, 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextFormField(
                          controller: _controller,
                          style: TextStyle(color: Colors.white),
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.multiline,
                          maxLines: 6,
                          minLines: 1,
                          onChanged: (value) {
                            if(value.length>0){
                              setState(() {
                                sendButton = true;
                              });
                            }else{
                              setState(() {
                                sendButton = false;
                              });
                            }
                          },
                          cursorColor: Color.fromRGBO(0, 167, 131, 1.0),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Message',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            contentPadding: EdgeInsets.all(5),
                            prefixIcon: IconButton(
                              icon: Icon(
                                Icons.emoji_emotions,
                                color: Colors.grey[400],
                              ),
                              onPressed: () {},
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Transform.rotate(
                                  angle:- 45 * pi / 180,
                                  child: IconButton(
                                    icon: Icon(Icons.attach_file, color: Colors.grey[400],),
                                    onPressed: () {},
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.camera_alt, color: Colors.grey[400],),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(0, 167, 131, 1.0),
                          radius: 25,
                          child: IconButton(
                            icon: Icon(
                              sendButton ?Icons.send :Icons.mic,
                              color: Colors.white,),
                            onPressed: (){
                              if(sendButton=true){
                                final message = Message(
                                    text: _controller.text,
                                    date: DateTime.now(),
                                    isSentByMe: true);
        
                                setState(() {
                                  messages.add(message);
                                  _controller.clear();
                                  sendButton=false;
                                  FocusScope.of(context).unfocus();
                                });
        
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}