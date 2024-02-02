import 'package:flutter/material.dart';
import 'package:valorantmaster/mainfolder/first.dart';
import 'package:valorantmaster/mainfolder/second.dart';

class TabPage extends StatelessWidget {

  final _tab = <Tab> [
    Tab( text:'記入', icon: Icon(Icons.directions_car)),
    Tab( text:'記録', icon: Icon(Icons.directions_bike)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: const Text("ValorantHistory"),
          bottom: TabBar(
            tabs: _tab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            FirstPage(),
            SecondPage(),
          ],
        ),
      ),
    );
  }
}
