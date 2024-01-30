import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/weponfolder/wepon_name/bulldog.dart';
import 'package:valorantmaster/weponfolder/wepon_name/guardian.dart';
import 'package:valorantmaster/weponfolder/wepon_name/phantom.dart';
import 'package:valorantmaster/weponfolder/wepon_name/vandal.dart';

class RiflesPage extends StatelessWidget {
  const RiflesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.red[900], title: const Text('Rifle')),
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
                        child: const BulldogPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Bulldog.png',
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
                        child: const GuardianPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Guardian.png',
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
                        child: const PhantomPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Phantom.png',
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
                        child: const VandalPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'images/Vandal.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
