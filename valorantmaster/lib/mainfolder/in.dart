import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valorantmaster/mainfolder/out.dart';

class InPage extends StatefulWidget {
  const InPage({Key? key}) : super(key: key);

  @override
  State<InPage> createState() => _InPageState();
}

class _InPageState extends State<InPage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aページ'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textController,
          ),
          ElevatedButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              final texts = prefs.getStringList('texts') ?? [];
              texts.add(_textController.text);
              await prefs.setStringList('texts', texts);

              // Bページに遷移
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const OutPage()),
              );
            },
            child: const Text('保存'),
          ),
        ],
      ),
    );
  }
}
