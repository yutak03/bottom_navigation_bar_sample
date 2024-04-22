import 'package:flutter/material.dart';

class OfficeScreen extends StatelessWidget {
  const OfficeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('事業所'),
      ),
      body: const Center(
          child: Text('事業所画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}