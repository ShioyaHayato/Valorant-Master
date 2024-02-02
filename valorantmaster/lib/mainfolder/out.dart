import 'package:flutter/material.dart';
import 'reflection.dart';

class OutPage extends StatelessWidget {
  const OutPage({super.key, required this.reflectionList});

  final List<Reflection> reflectionList;

  // getter を正しく実装
  Map<String, dynamic>? get reflectionContent {
    if (reflectionList.isEmpty) {
      return null;
    }
    return reflectionList[0].toJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                const SizedBox(height: 50),
                const Text(
                  '反省内容', // 日本語で表示
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: reflectionList.length,
                  itemBuilder: (context, index) {
                    Reflection reflection = reflectionList[index];
                    String title = reflectionContent?['title'] ?? ''; // nullチェック
                    return ListTile(
                      title: Text(
                        '反省 ${index + 1}',
                      ),
                      subtitle: Text(
                        reflection.date.toString(),
                      ),
                      trailing: Text(title), // 反省内容を表示
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
