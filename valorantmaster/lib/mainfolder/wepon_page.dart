import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:valorantmaster/weponfolder/wepon_class/handgun.dart';
import 'package:valorantmaster/weponfolder/wepon_class/rifles.dart';
import 'package:valorantmaster/weponfolder/wepon_class/shotgun.dart';
import 'package:valorantmaster/weponfolder/wepon_class/smgs.dart';
import 'package:valorantmaster/weponfolder/wepon_class/sniper.dart'; //問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる

//main.dartをインポートすることで、agent_pageからでもmainの情報を見に行くことが出来る

class WeponPage extends StatelessWidget {
  const WeponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text('Wepon'),
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
          // ここを追加
          child: Column(
            children: [
              const SizedBox(
                height: 125,
              ),
              Center(
                child: GestureDetector(
                  child: Image.asset(
                    'images/HandGun.png',
                    fit: BoxFit.fill,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const HundGunPage(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  child: Image.asset(
                    'images/Smgs.png',
                    fit: BoxFit.fill,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const SmgPage(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  child: Image.asset(
                    'images/Rifles.png',
                    fit: BoxFit.fill,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const RiflesPage(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  child: Image.asset(
                    'images/Sniper.png',
                    fit: BoxFit.fill,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const SniperPage(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  child: Image.asset(
                    'images/Shotgun.png',
                    fit: BoxFit.fill,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const ShotGunPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//デュエリスト
//センチネル
//イニシエーター
//コントローラー