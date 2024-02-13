import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/agentfolder/duelist/iso.dart';
import 'package:valorantmaster/agentfolder/duelist/jett.dart';
import 'package:valorantmaster/agentfolder/duelist/neon.dart';
import 'package:valorantmaster/agentfolder/duelist/phoneix.dart';
import 'package:valorantmaster/agentfolder/duelist/raze.dart';
import 'package:valorantmaster/agentfolder/duelist/reyna.dart';
import 'package:valorantmaster/agentfolder/duelist/yoru.dart'; //問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる

class DuelistPage extends StatelessWidget {
  const DuelistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFff4655),
        title: const Text('Duelist'),
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
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const JettPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Duelist1.png',
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
                        child: const RazePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Duelist2.png',
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
                        child: const ReynaPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Duelist3.png',
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
                        child: const IsoPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Duelist4.png',
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
                        child: const NeonPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Duelist5.png',
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
                        child: const PhoneixPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Duelist6.png',
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
                        child: const YoruPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Duelist7.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),

                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
