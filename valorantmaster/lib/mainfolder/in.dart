import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InPage extends StatefulWidget {
  const InPage({Key? key}) : super(key: key);

  @override
  State<InPage> createState() => _InPageState();
}

class _InPageState extends State<InPage> {
  final TextEditingController _textController = TextEditingController();
  final List<String> _texts = [];

  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景画像
          Image.asset(
            'images/MainPage.png', 
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('対戦の結果や反省点を記録してください',
                    style: TextStyle(
                      fontFamily: 'NotoSansJP',
                      fontSize: 20,
                      color: Colors.white,
                    )),
                const SizedBox(height: 90.0),
                TextField(
                  controller: _textController,
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'NotoSansJP'),
                  maxLines: null,
                ),
                ElevatedButton(
                  onPressed: () async {
                    
                    final String text = _textController.text;

                    
                    _texts.add(text);
                    await prefs.setStringList('texts', _texts);

                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('保存しました',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'NotoSansJP')),
                        backgroundColor: Color(0xFFff4655),
                        duration: Duration(seconds: 2), 
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFff4655),
                  ),
                  child: const Text(
                    '保存',
                    style: TextStyle(
                        fontFamily: 'NotoSansJP', color: Colors.white),
                  ),
                ),
                const SizedBox(height: 90.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
