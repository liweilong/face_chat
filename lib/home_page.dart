import 'package:flutter/material.dart';

import 'package:face_chat/contact_list/contact_page.dart';
import 'package:face_chat/message_list/message_page.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  List<String> tabs = ["消息","联系人","发现"];
  int currPage = 0;

  Widget _selectBody() {
    switch(currPage) {
      case 0: return MessagePage();
      case 1: return ContactPage();
      case 2: return Text(tabs[2]);
    }
    return Center(
      child: Text("Page not found"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _selectBody(),
      resizeToAvoidBottomPadding: true,

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text(tabs[0]),
            icon: Icon(Icons.message, color: Colors.grey,),
            activeIcon: Icon(Icons.message, color: Colors.blue,),
          ),
          BottomNavigationBarItem(
            title: Text(tabs[1]),
            icon: Icon(Icons.perm_contact_calendar, color: Colors.grey,),
            activeIcon: Icon(Icons.perm_contact_calendar, color: Colors.blue,),
          ),
          BottomNavigationBarItem(
            title: Text(tabs[2]),
            icon: Icon(Icons.all_inclusive, color: Colors.grey,),
            activeIcon: Icon(Icons.all_inclusive, color: Colors.blue,),
          ),
        ],
        onTap: (id) {
          setState(() {
            currPage = id;
          });
        },
        currentIndex: currPage,
      ),
    );
  }

}
