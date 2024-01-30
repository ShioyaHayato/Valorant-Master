import 'package:flutter/material.dart';
import 'package:valorantmaster/agentfolder/duelist/iso.dart';
import 'package:valorantmaster/agentfolder/duelist/jett.dart';
import 'package:valorantmaster/agentfolder/duelist/neon.dart';
import 'package:valorantmaster/agentfolder/duelist/phoneix.dart';
import 'package:valorantmaster/agentfolder/duelist/raze.dart';
import 'package:valorantmaster/agentfolder/duelist/reyna.dart';
import 'package:valorantmaster/agentfolder/duelist/yoru.dart';

// 不要なインポートを削除
// import 'package:flutter/cupertino.dart';

class DuelistPage extends StatelessWidget {
  const DuelistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text('Duelist'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/MainPage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              for (int i = 1; i < 9; i++)
                GestureDetector(
                  onTap: () {
                    if (i == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const JettPage()),
                      );
                    }
                     else if (i == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RazePage()),
            );
          }
           else if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReynaPage()),
            );
          }
           else if (i == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const IsoPage()),
            );
          }
           else if (i == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NeonPage()),
            );
          }
           else if (i == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PhoneixPage()),
            );
          }
           else if (i == 7) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const YoruPage()),
            );
          }

          //8人目のデュエリストが出たら追加する


                  },
                  child: Image.asset('images/Duelist$i.png'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}