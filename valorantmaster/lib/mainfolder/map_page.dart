import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text('Map'),
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
        child: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset('images/Sunset.png',//Haven
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ), 
            const SizedBox(height: 20), 
            Image.asset('images/Ascent.png',//Icebox
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ), 
            const SizedBox(height: 20), 
            Image.asset('images/Bind.png',//Split
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ), 
            const SizedBox(height: 20), 
            Image.asset('images/Breeze.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20), 
            Image.asset('images/Fracture.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20), 
            Image.asset('images/Haven.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20), 
            Image.asset('images/Icebox.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20), 
            Image.asset('images/Lotus.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20), 
            Image.asset('images/Pearl.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20), 
            Image.asset('images/Sprit.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      ),
      ),
    );
  }
}
