import 'package:flutter/material.dart';

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class DuelistPage extends StatelessWidget {
  const DuelistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
          title: const Text('Duelist') //フォントを変更したい todo:
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 20),
                child: Image.asset(
                  'images/Duelist.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Image.asset(
                  'images/Duelist.png',
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
