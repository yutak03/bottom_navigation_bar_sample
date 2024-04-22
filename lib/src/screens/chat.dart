import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('トーク'),
      ),
      body:
          const Center(child: Text('トーク画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}