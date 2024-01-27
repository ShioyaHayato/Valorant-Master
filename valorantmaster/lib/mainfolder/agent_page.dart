import 'package:flutter/material.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_Initiator_page.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_controller_page.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_duelist_page.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_sentinel_page.dart';

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class AgentPage extends StatelessWidget {
  const AgentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
          title: const Text('Agents') //フォントを変更したい todo:
          ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/MainPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 125,
            ),
            Center(
              child: GestureDetector(
                child: Image.asset(
                  'images/Duelist.png',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DuelistPage()),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                child: Image.asset(
                  'images/Sentinel.png',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SentinelPage()),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                child: Image.asset(
                  'images/Initiator.png',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InitiatorPage()),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                child: Image.asset(
                  'images/Controller.png',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ControllerPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//デュエリスト
//センチネル
//イニシエーター
//コントローラー