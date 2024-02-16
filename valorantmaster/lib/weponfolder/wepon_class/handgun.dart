import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/weponfolder/wepon_name/classic.dart';
import 'package:valorantmaster/weponfolder/wepon_name/frenzy.dart';
import 'package:valorantmaster/weponfolder/wepon_name/ghost.dart';
import 'package:valorantmaster/weponfolder/wepon_name/sheriff.dart';
import 'package:valorantmaster/weponfolder/wepon_name/shorty.dart';

class HundGunPage extends StatelessWidget {
  const HundGunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFff4655), title: const Text('HundGun'),
          actions: [
          Image.asset('images/AppberIcon.png'),
        ],
      ),
     body: Stack(
  children: [
    Positioned.fill(
      child: Image.asset(
        'images/MainPage.png',
        fit: BoxFit.cover,
      ),
    ),
    Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
                const SizedBox(height: 100),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const ClassicPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Classic.png',
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
                        child: const GhostPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Ghost.png',
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
                        child: const FrenzyPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Frenzy.png',
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
                        child: const SheriffPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sheriff.png',
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
                        child: const ShortyPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Shorty.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
  ]
     ),
     
    );
    
  }
}
