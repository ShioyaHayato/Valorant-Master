import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/weponfolder/wepon_name/marshal.dart';
import 'package:valorantmaster/weponfolder/wepon_name/operator.dart';
import 'package:valorantmaster/weponfolder/wepon_name/outlaw.dart';

class SniperPage extends StatelessWidget {
  const SniperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: const Color(0xFFff4655), title: const Text('Sniper'),
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
                        child: const MarshalPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Marshal.png',
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
                        child: const OperatorPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Operator.png',
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
                        child: const OutlawPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Outlaw.png',
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
