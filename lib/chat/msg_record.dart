
import 'package:flutter/material.dart';

class ChatMsgWidget extends StatefulWidget {
  ChatMsgWidget(this.msg);


  final String msg;

  @override
  State<StatefulWidget> createState() {
    return ChatMsgState();
  }

}

class ChatMsgState extends State<ChatMsgWidget> {


  @override
  Widget build(BuildContext context) {
    return  CustomPaint(
              painter: MsgContainerPainter(),
              child: Container(
                width: 160,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
                        width: 200,
                        child: Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                          softWrap: true,
                        ),
                      )
                    ),
                  ],
                ),
              )
            );
  }

}

class MsgContainerPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = Colors.lightGreen;

    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(10, 0, 200, size.height), Radius.circular(5)), paint);
    Path path = new Path()
      ..moveTo(10, size.height/2-5)
      ..lineTo(10, size.height/2+5)
      ..lineTo(4, size.height/2)
      ..lineTo(10, size.height/2-5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}