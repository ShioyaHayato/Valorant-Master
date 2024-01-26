import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学'),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text('次へ'),
          onPressed: () {
            // ここにボタンを押した時に呼ばれるコードを書く
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage()),
            );
          },
        ),
      ),
    );
  }
}
