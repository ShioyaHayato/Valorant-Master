import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OutPage extends StatefulWidget {
  const OutPage({Key? key}) : super(key: key);

  @override
  State<OutPage> createState() => _OutPageState();
}



class _OutPageState extends State<OutPage> {
  List<String> _texts = [];



//例外が発生しました
//_TypeError (type 'String' is not a subtype of type 'List<dynamic>?' in type cast)


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
    setState(() {}); 
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
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: _texts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_texts[index],
                    style: const TextStyle(
                        color: Colors.black, fontFamily: 'NotoSansJP')),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.white,
                  onPressed: () => _deleteText(
                      _texts.indexOf(_texts[index])), 
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
