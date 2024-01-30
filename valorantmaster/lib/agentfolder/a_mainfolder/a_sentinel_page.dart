import 'package:flutter/material.dart';
import 'package:valorantmaster/agentfolder/sentinel/chamber.dart';
import 'package:valorantmaster/agentfolder/sentinel/cypher.dart';
import 'package:valorantmaster/agentfolder/sentinel/deadlock.dart';
import 'package:valorantmaster/agentfolder/sentinel/killjoy.dart';
import 'package:valorantmaster/agentfolder/sentinel/sage.dart';

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class SentinelPage extends StatelessWidget {
  const SentinelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
          title: const Text('Sentinel') //フォントを変更したい todo:
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
              for (int i = 1; i < 9; i++)
                GestureDetector(
                  onTap: () {
                    if (i == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DeadlockPage()),
                      );
                    }
                     else if (i == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CypherPage()),
            );
          }
           else if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const KilljoyPage()),
            );
          }
           else if (i == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SagePage()),
            );
          }
           else if (i == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChamberPage()),
            );
          }

          //8人目のデュエリストが出たら追加する


                  },
                  child: Image.asset('images/Sentinel$i.png'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}