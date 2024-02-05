import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/weponfolder/wepon_name/bucky.dart';
import 'package:valorantmaster/weponfolder/wepon_name/judge.dart';

class ShotGunPage extends StatelessWidget {
  const ShotGunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFff4655), title: const Text('ShotGun'),
          actions: [
          Image.asset('images/AppberIcon.png'),
        ],),
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
                // Wrap the Ascent image with GestureDetector
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const BuckyPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Bucky.png',
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
                        child: const JudgePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Judge.png',
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
