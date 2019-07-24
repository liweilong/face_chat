
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return ContactPageState();
  }

}

class ContactPageState extends State<ContactPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("通讯录", style: TextStyle(color: Colors.black, fontSize: 18),),
        brightness: Brightness.light,
        backgroundColor: Colors.grey[200],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: null),
          IconButton(icon: Icon(Icons.add_circle_outline, color: Colors.black,), onPressed: null,),
        ],
      ),
    );
  }

}