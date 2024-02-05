import 'package:flutter/material.dart';
import 'package:valorantmaster/mainfolder/in.dart';
import 'package:valorantmaster/mainfolder/out.dart';

class ValorantHistoryPage extends StatelessWidget {

  final _tab = <Tab> [
    const Tab( text:'記入', icon: Icon(Icons.edit)),
    const Tab( text:'記録', icon: Icon(Icons.description)),
  ];

   ValorantHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          actions: [
          Image.asset('images/AppberIcon.png'),
        ],
          backgroundColor: Colors.red[900],
          title: const Text("ValorantHistory"),
          bottom: TabBar(
            tabs: _tab,
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            InPage(),
            OutPage(),
          ],
        ),
      ),
    );
  }
}
