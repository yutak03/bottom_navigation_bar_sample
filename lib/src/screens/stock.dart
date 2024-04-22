import 'package:flutter/material.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('在庫管理'),
      ),
      body:
          const Center(child: Text('在庫管理画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}