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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bページ'),
      ),
      body: ListView.builder(
        itemCount: _texts.length,
        itemBuilder: (context, index) {
          return Text(_texts[index]);
        },
      ),
    );
  }
}
