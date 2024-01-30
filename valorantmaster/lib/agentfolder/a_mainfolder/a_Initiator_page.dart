import 'package:flutter/material.dart';
import 'package:valorantmaster/agentfolder/initiator/breach.dart';
import 'package:valorantmaster/agentfolder/initiator/fade.dart';
import 'package:valorantmaster/agentfolder/initiator/gekko.dart';
import 'package:valorantmaster/agentfolder/initiator/kayo.dart';
import 'package:valorantmaster/agentfolder/initiator/skye.dart';
import 'package:valorantmaster/agentfolder/initiator/sova.dart';

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class InitiatorPage extends StatelessWidget {
  const InitiatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text('Initator'),
        actions: [
          Image.asset('images/AppberIcon.png'),
        ],
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
                        MaterialPageRoute(builder: (context) => const SovaPage()),
                      );
                    }
                     else if (i == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GekkoPage()),
            );
          }
           else if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SkyePage()),
            );
          }
           else if (i == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const KayoPage()),
            );
          }
           else if (i == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FadePage()),
            );
          }
            else if (i == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BreachPage()),
            );
          }
          //8人目のデュエリストが出たら追加する


                  },
                  child: Image.asset('images/Initiator$i.png'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}