import 'package:flutter/material.dart';

import 'screens/my_page.dart';
import 'screens/office.dart';
import 'screens/report.dart';
import 'screens/stock.dart';
import 'screens/chat.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [
    ReportScreen(),
    OfficeScreen(),
    ChatScreen(),
    StockScreen(),
    MypageScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.event_note), label: '日報'),
          BottomNavigationBarItem(icon: Icon(Icons.apartment), label: '事業所'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'トーク'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: '在庫'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'マイページ'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}