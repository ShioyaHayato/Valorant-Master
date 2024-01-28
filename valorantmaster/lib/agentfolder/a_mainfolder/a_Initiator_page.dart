import 'package:flutter/material.dart';

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class InitiatorPage extends StatelessWidget {
  const InitiatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
          title: const Text('Initiator') //フォントを変更したい todo:
          ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/MainPage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              for (int i = 1; i < 9; i++) // 8 枚の画像を作成
                Image.asset('images/Duelist$i.png', height: 150, width: 150),
            ],
          )
        ],
      ),
    );
  }
}
