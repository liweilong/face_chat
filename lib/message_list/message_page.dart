import 'package:face_chat/chat/chat_page.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MessagePageState();
  }

}

class MessagePageState extends State<MessagePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("对话", style: TextStyle(color: Colors.black, fontSize: 18,),),
        brightness: Brightness.light,
        backgroundColor: Colors.grey[200],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black,),
            onPressed: () => print("search"),
          )
        ],
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.lightGreen,
          child: Text("talk"),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ChatPage())
          ),
        ),
      ),
    );
  }

}