

import 'package:flutter/material.dart';
//agent_pageに書いてある

class CypherPage extends StatelessWidget {
  const CypherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.red[900], title: const Text('Cypher')),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/MainPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(),
      ),
    );
  }
}
