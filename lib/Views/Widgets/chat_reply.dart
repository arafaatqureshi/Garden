import 'package:flutter/material.dart';

class ChatReplyWidget extends StatelessWidget {
  final String reply;
  final bool isSender;

  ChatReplyWidget({required this.reply, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSender ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          reply,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
