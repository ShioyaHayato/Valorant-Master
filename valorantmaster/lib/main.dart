import 'package:flutter/material.dart';

void main() => runApp(VmLogo());

class VmLogo extends StatelessWidget {
  const VmLogo({Key? key}) : super(key: key);

  void launch() {
    // 新しいページに遷移させる
    Navigator.pushNamed('new-page');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // 新しいページへのルートを追加
        'new-page': (context) => NewPage(),
      },
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            // ...

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 0), // 上に75ピクセルずらす
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
            const SizedBox(width: 60, height: 60),
            Center(
              child: GestureDetector(
                onTap: launch,
                child: Image.asset(
                  'images/Agent.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: launch,
                child: Image.asset(
                  'images/Map.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: launch,
                child: Image.asset(
                  'images/Wepon.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Text('This is the new page!'),
      ),
    );
  }
}
