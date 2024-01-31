import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valorantmaster/mainfolder/export_page.dart';

class RecordInputPage extends StatefulWidget {
  const RecordInputPage({Key? key}) : super(key: key);

  @override
  State<RecordInputPage> createState() => _RecordInputPageState();
}

class _RecordInputPageState extends State<RecordInputPage> {
  final _dateController = TextEditingController();
  final _characterController = TextEditingController();
  final _kdaController = TextEditingController();
  final _mapController = TextEditingController();
  final _winController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記録入力'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _dateController,
                decoration: const InputDecoration(
                  labelText: '日付',
                ),
              ),
              TextField(
                controller: _characterController,
                decoration: const InputDecoration(
                  labelText: '使用キャラ',
                ),
              ),
              TextField(
                controller: _kdaController,
                decoration: const InputDecoration(
                  labelText: 'KDA',
                ),
              ),
              TextField(
                controller: _mapController,
                decoration: const InputDecoration(
                  labelText: 'マップ',
                ),
              ),
              TextField(
                controller: _winController,
                decoration: const InputDecoration(
                  labelText: '勝敗',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // データ保存
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString('date', _dateController.text);
                  prefs.setString('character', _characterController.text);
                  prefs.setString('kda', _kdaController.text);
                  prefs.setString('map', _mapController.text);
                  prefs.setBool('win', _winController.text == 'true');

                  // リスト画面へ遷移
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RecordListPage(),
                    ),
                  );
                },
                child: const Text('保存'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
