import 'package:flutter/material.dart';
<<<<<<< Updated upstream

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る
=======
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/agentfolder/controller/astra.dart';
import 'package:valorantmaster/agentfolder/controller/brimstone.dart';
import 'package:valorantmaster/agentfolder/controller/harbor.dart';
import 'package:valorantmaster/agentfolder/controller/omen.dart';
import 'package:valorantmaster/agentfolder/controller/viper.dart'; //問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる
>>>>>>> Stashed changes

class ControllerPage extends StatelessWidget {
  const ControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< Updated upstream
          backgroundColor: Colors.red[900], //colorコードは#fffffじゃない、ややこし
          title: const Text('Controller') //フォントを変更したい todo:
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
        title: const Text('Controller'),
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
                        child: const AstraPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Controller1.png',
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
                        child: const BrimstonePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Controller2.png',
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
                        child: const HarborPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Controller3.png',
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
                        child: const OmenPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Controller4.png',
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
                        child: const ViperPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Controller5.png',
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
