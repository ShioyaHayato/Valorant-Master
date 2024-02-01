import 'package:flutter/material.dart';
import 'package:valorantmaster/mapfolder/haven.dart';
import 'package:valorantmaster/mapfolder/icebox.dart';
import 'package:valorantmaster/mapfolder/lotus.dart';
import 'package:valorantmaster/mapfolder/pearl.dart';
import 'package:valorantmaster/mapfolder/sprit.dart';
import 'package:valorantmaster/mapfolder/sunset.dart';
import 'package:valorantmaster/mapfolder/ascent.dart';
import 'package:valorantmaster/mapfolder/bind.dart';
import 'package:valorantmaster/mapfolder/breeze.dart';
import 'package:valorantmaster/mapfolder/fracture.dart';
import 'package:page_transition/page_transition.dart'; //問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text('Map'),
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
                        child: const SunsetPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sunset.png',
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
                        child: const AscentPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Ascent.png',
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
                        child: const BindPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Bind.png',
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
                        child: const BreezePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Breeze.png',
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
                        child: const FracturePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Fracture.png',
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
                        child: const HavenPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Haven.png',
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
                        child: const IceboxPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Icebox.png',
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
                        child: const LotusPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Lotus.png',
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
                        child: const PearlPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Pearl.png',
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
                        child: const SpritPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Sprit.png',
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
