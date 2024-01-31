import 'package:flutter/material.dart';
<<<<<<< Updated upstream

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

=======
import 'package:page_transition/page_transition.dart';//問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる
import 'package:valorantmaster/agentfolder/sentinel/chamber.dart';
import 'package:valorantmaster/agentfolder/sentinel/cypher.dart';
import 'package:valorantmaster/agentfolder/sentinel/deadlock.dart';
import 'package:valorantmaster/agentfolder/sentinel/killjoy.dart';
import 'package:valorantmaster/agentfolder/sentinel/sage.dart'; 
>>>>>>> Stashed changes
class SentinelPage extends StatelessWidget {
  const SentinelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< Updated upstream
          backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
          title: const Text('Sentinel') //フォントを変更したい todo:
          ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/MainPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(),
=======
        backgroundColor: Colors.red[900],
        title: const Text('Sentinel'),
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
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                // Wrap the Ascent image with GestureDetector
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const DeadlockPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sentinel1.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const CypherPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sentinel2.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(height: 20),

//here

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const KilljoyPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sentinel3.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),

//here

                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const SagePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sentinel4.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),

                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const ChamberPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sentinel5.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
 
 
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
>>>>>>> Stashed changes
      ),
    );
  }
}
