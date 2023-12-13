import 'package:flutter/material.dart';

class chatpage extends StatefulWidget {
  final String receiverEmail;
  final String receiverId;

  const chatpage({super.key,required this .receiverEmail,required this.receiverId});

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receiverEmail),
        centerTitle: true,
      ),
    );
  }
}
