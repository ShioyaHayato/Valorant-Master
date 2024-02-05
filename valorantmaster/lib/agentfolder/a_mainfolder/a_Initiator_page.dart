import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';    //問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる
import 'package:valorantmaster/agentfolder/initiator/breach.dart';
import 'package:valorantmaster/agentfolder/initiator/fade.dart';
import 'package:valorantmaster/agentfolder/initiator/gekko.dart';
import 'package:valorantmaster/agentfolder/initiator/kayo.dart';
import 'package:valorantmaster/agentfolder/initiator/skye.dart';
import 'package:valorantmaster/agentfolder/initiator/sova.dart'; 

class InitiatorPage extends StatelessWidget {
  const InitiatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: const Color(0xFFff4655),
        title: const Text('Initiator'),
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
                        child: const SovaPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Initiator1.png',
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
                        child: const GekkoPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Initiator2.png',
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
                        child: const SkyePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Initiator3.png',
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
                        child: const KayoPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Initiator4.png',
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
                        child: const FadePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Initiator5.png',
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
                        child: const BreachPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Initiator6.png',
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
