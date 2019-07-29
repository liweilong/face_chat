
import 'package:flutter/material.dart';

import 'msg_record.dart';

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatPageState();
  }

}

class ChatPageState extends State<ChatPage> {

  ScrollController _scrollController = ScrollController(

  );
//  var str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var str = "ABC";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("夏天的风"),
        centerTitle: true,
        leading: Builder(builder: (context) => IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.white,),
            onPressed: () => print("more"),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ListView(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      controller: _scrollController,
                      reverse: true,
                      shrinkWrap: true,
                      children: str.split("").map((c) =>
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                            child: ChatMsgWidget(c),
                          )
                      ).toList()
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.keyboard_voice, size: 30,),
                  onPressed: () => print("voice"),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                    constraints: BoxConstraints(
                      maxHeight: 150,
                      minHeight: 30,
                    ),
                    child: TextField(
                      maxLength: 100,
                      maxLines: null,
                      maxLengthEnforced: true,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.send,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(8),
                        counterText: "",
                        isDense: true,
                      ),
                      onSubmitted: (str) {

                      },
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.insert_emoticon, size: 30,),
                  onPressed: () => print("add"),
                ),
                IconButton(
                  icon: Icon(Icons.add_circle_outline, size: 30,),
                  onPressed: () {
                    print(_scrollController.offset);
                    _scrollController.animateTo(0,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.ease,
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
