import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('日報'),
      ),
      body:
          const Center(child: Text('日報画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}