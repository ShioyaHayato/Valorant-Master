import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/weponfolder/wepon_name/spectre.dart';
import 'package:valorantmaster/weponfolder/wepon_name/stinger.dart';

class SmgPage extends StatelessWidget {
  const SmgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: const Color(0xFFff4655), title: const Text('Smg'),
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
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const StingerPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Stinger.png',
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
                        child: const SpectrePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Spectre.png',
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
