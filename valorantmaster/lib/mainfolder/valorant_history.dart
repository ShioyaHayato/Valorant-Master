import 'package:flutter/material.dart';
import 'package:valorantmaster/mainfolder/input.dart';
import 'package:valorantmaster/mainfolder/output.dart';

class ValorantHistoryPage extends StatelessWidget {
  const ValorantHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ValorantHistory',
      theme: ThemeData(
        primarySwatch: Colors.red, // アプリ全体のテーマカラーをred[900]に設定
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
    InputPage(),
    OutputPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // 画面遷移処理を追加
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _screens[_selectedIndex]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValorantHistory'),
        backgroundColor: Colors.red[900], // AppBarの背景色をColors.red[900]に設定
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '記入'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '記録'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
