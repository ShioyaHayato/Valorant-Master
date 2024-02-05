import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OutPage extends StatefulWidget {
  const OutPage({Key? key}) : super(key: key);

  @override
  State<OutPage> createState() => _OutPageState();
}

class _OutPageState extends State<OutPage> {
  List<String> _texts = [];

  @override
  void initState() {
    super.initState();
    _loadTexts();
  }

  Future<void> _loadTexts() async {
    final prefs = await SharedPreferences.getInstance();
    final texts = prefs.getStringList('texts') ?? [];
    setState(() {
      _texts = texts;
    });
  }

  Future<void> _deleteText(int index) async {
    final prefs = await SharedPreferences.getInstance();
    _texts.removeAt(index);
    await prefs.setStringList('texts', _texts);
    setState(() {}); // リストの変更を反映させる
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景画像
          Image.asset(
            'images/MainPage.png', // 你的背景圖片位置
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: _texts.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Row(
  children: [
    Expanded(
      child: Text(
        _texts[index],
        style: TextStyle(color: Colors.black),
      ),
    ),
    IconButton(
      icon: const Icon(Icons.delete),
      color: Colors.white,
      onPressed: () => _deleteText(index),
    ),
  ],
),

              );
            },
          ),
        ],
      ),
    );
  }
}
