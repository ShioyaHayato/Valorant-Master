import 'package:flutter/material.dart';
import 'package:valorantmaster/mainfolder/agent_page.dart';
import 'package:valorantmaster/mainfolder/map_page.dart';
import 'package:valorantmaster/mainfolder/wepon_page.dart';
import 'package:page_transition/page_transition.dart'; //問題にエラーが書いてあるけどverを落とすとlaunch出来なくなる

//インポートは各ページのdartをインポートして見にいけるようにする

//MyAppは名前は何でもいいけど、基本MyAppらしい、アプリを開いたときに一番最初に実行するコマンドが書かれてるっぽい
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

//これはメインページにあたるもの
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //まだわからないけどアプリ全体の背景を黒から画像にする todo:
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/MainPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/vmIcon.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: GestureDetector(
                child: Image.asset(
                  'images/Agent.png',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const AgentPage(),
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
                  'images/Map.png',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const MapPage(),
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
                  'images/Wepon.png',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const WeponPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
