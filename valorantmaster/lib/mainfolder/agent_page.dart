import 'package:flutter/material.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_initiator_page.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_controller_page.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_duelist_page.dart';
import 'package:valorantmaster/agentfolder/a_mainfolder/a_sentinel_page.dart';
import 'package:page_transition/page_transition.dart'; //問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class AgentPage extends StatelessWidget {
  const AgentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFff4655),
        title: const Text('Agents'),
        actions: [
          Image.asset('images/AppberIcon.png'),
        ],
      ),
      
      body: Container(
        
        decoration: const BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage('images/MainPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const DuelistPage(),
                    ),
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
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const SentinelPage(),
                    ),
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
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const InitiatorPage(),
                    ),
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
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const ControllerPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

//デュエリスト
//センチネル
//イニシエーター
//コントローラー