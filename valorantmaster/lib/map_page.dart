import 'package:flutter/material.dart';
//agent_pageに書いてある

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.red[900], title: const Text('Maps')),
      body: const Center(),
    );
  }
}
