import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecordListPage extends StatefulWidget {
  const RecordListPage({Key? key}) : super(key: key);

  @override
  State<RecordListPage> createState() => _RecordListPageState();
}

class _RecordListPageState extends State<RecordListPage> {
  List<Record> records = [];

  @override
  void initState() {
    super.initState();
    _loadRecords();
  }

  void _loadRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final dates = prefs.getStringList('dates') ?? []; // 存在しない場合は空リストを返す
    final characters = prefs.getStringList('characters') ?? [];
    final kdas = prefs.getStringList('kdas') ?? [];
    final maps = prefs.getStringList('maps') ?? [];

    // 修正案1：個別にbool値を取得する場合
    final wins = List.generate(dates.length, (index) => prefs.getBool('win$index'));

    // 修正案2：すべてのbool値をリストにまとめる場合
    // final boolValues = prefs.getKeys().map((key) => prefs.getBool(key)).toList();
    // final wins = boolValues.where((value) => key.startsWith('win_')).toList();

    // 修正案3：独自の拡張メソッドを作成した場合
    // final wins = prefs.getBoolList('wins');

    records = List.generate(
      dates.length,
      (index) => Record(
        date: DateTime.parse(dates[index]),
        character: characters[index],
        kda: kdas[index],
        map: maps[index],
        win: wins[index]!,
      ),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記録一覧'),
      ),
      body: ListView.builder(
        itemCount: records.length,
        itemBuilder: (context, index) {
          final record = records[index];
          return ListTile(
            title: Text(record.date.toString()),
            subtitle: Text('${record.character} / ${record.kda} / ${record.map} / ${record.win ? '勝利' : '敗北'}'),
          );
        },
      ),
    );
  }
}

class Record {
  final DateTime date;
  final String character;
  final String kda;
  final String map;
  final bool win;

  Record({
    required this.date,
    required this.character,
    required this.kda,
    required this.map,
    required this.win,
  });
}
