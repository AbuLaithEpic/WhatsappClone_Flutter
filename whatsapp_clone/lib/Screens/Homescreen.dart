import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/ChatPages.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 28, 35, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(31, 44, 52, 1),
        title:
          Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
          ),
        actions: [
          IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: () {},),
          IconButton(icon: Icon(Icons.search_outlined), onPressed: () {},),
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
        bottom: TabBar(
          controller: _controller,
          labelColor: Color.fromRGBO(0, 168, 132, 1),
          unselectedLabelColor: Colors.grey,
          indicatorColor: Color.fromRGBO(0, 168, 132, 1),
          indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(Icons.groups,),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Updates',
            ),
            Tab(
              text: 'Calls',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('camera', style: TextStyle(color: Colors.white),),
          ChatPage(),
          Text('1'),
          Text('1'),
        ],
      ),
    );
  }
}
