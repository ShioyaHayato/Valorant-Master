import 'package:flutter/material.dart';
//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class AgentPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
        title: const Text('Agents') //フォントを変更したい todo:
        ),
      body: Center(
      ),
    );
  }
}