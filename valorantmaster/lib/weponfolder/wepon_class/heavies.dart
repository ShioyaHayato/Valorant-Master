import 'package:flutter/material.dart';
//agent_pageに書いてある

class HeaviePage extends StatelessWidget {
  const HeaviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: const Color(0xFFff4655), title: const Text('Heavie'),
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
        child: const Center(),
      ),
    );
  }
}
