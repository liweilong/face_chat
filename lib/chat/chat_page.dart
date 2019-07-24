
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatPageState();
  }

}

class ChatPageState extends State<ChatPage> {

  TextEditingController _editController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("夏天的风"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.black,),
            onPressed: () => print("more"),
          )
        ],
      ),
      body: ListBody(
        children: <Widget>[
          DecoratedBox(
            child: Container(
              child: Text("Hello"),
              height: 30,
              width: 100,
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(5),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 30,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_voice),
              onPressed: () => {},
            ),
            TextField(
              controller: _editController,
            ),
          ],
        ),
      ),
    );
  }

}
