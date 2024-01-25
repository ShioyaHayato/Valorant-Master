import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(VmLogo());

class VmLogo extends StatelessWidget {
  const VmLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('images/vmIcon.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: GestureDetector(
                onTap: () {
                launch('https://www.google.com');
                },
                child: Image.asset('images/Agent.png',
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