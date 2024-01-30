import 'package:flutter/material.dart';
import 'package:valorantmaster/agentfolder/controller/astra.dart';
import 'package:valorantmaster/agentfolder/controller/brimstone.dart';
import 'package:valorantmaster/agentfolder/controller/harbor.dart';
import 'package:valorantmaster/agentfolder/controller/omen.dart';
import 'package:valorantmaster/agentfolder/controller/viper.dart';

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class ControllerPage extends StatelessWidget {
  const ControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
          title: const Text('Controller') //フォントを変更したい todo:
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
                        MaterialPageRoute(builder: (context) => const AstraPage()),
                      );
                    }
                     else if (i == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BrimstonePage()),
            );
          }
           else if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HarborPage()),
            );
          }
           else if (i == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OmenPage()),
            );
          }
           else if (i == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ViperPage()),
            );
          }

          //8人目のデュエリストが出たら追加する


                  },
                  child: Image.asset('images/Controller$i.png'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}