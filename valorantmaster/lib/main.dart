import 'package:flutter/material.dart';
import 'package:valorantmaster/agent_page.dart';
import 'package:valorantmaster/map_page.dart';
import 'package:valorantmaster/wepon_page.dart';

//インポートは各ページのdartをインポートして見にいけるようにする



//MyAppは名前は何でもいいけど、基本MyAppらしい、アプリを開いたときに一番最初に実行するコマンドが書かれてるっぽい
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


//これはメインページにあたるもの
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,   //まだわからないけどアプリ全体の背景を黒から画像にする todo:
        body: Column(
          children: [
            Center(
              child: Padding(
              padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/VmIcon.png',
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
                  fit: BoxFit.fill,),
                  onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  AgentPage()),
              );
            },
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: GestureDetector(
                child: Image.asset(
                  'images/Map.png',
                  fit: BoxFit.fill,),
                   onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  MapPage()),
              );
            },
                ),
              ),
            
            const SizedBox(height: 20,),
            Center(
              child: GestureDetector(
                child: Image.asset(
                  'images/Wepon.png',
                  fit: BoxFit.fill,),
                   onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  WeponPage()),
              );
            },
              ),
            ),
          ],
        ),
      );
  }
}