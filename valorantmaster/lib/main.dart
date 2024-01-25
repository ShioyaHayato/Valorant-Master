import 'package:flutter/material.dart';

void main() => runApp(VMlogo());

class VMlogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Column(
          children: [
            Center(
              child:
              Align(
               alignment: Alignment.topCenter,
               child: Image.asset('images/VM Icon.png',
                                    width: 10,
                                    height: 10,
              ),
             ),
            ),
          ],
        ),
      ),
    );
  }
}