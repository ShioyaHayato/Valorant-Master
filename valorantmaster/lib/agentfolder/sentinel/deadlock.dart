

import 'package:flutter/material.dart';
//agent_pageに書いてある

class DeadlockPage extends StatelessWidget {
  const DeadlockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.red[900], title: const Text('Deadlock')),
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
