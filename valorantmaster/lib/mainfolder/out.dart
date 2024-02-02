import 'package:flutter/material.dart';
import 'reflection.dart';  // 反省.dart ファイル名を変更

class OutPage extends StatelessWidget {
  const OutPage({super.key, required this.reflectionList}); // 反省リスト → reflectionList

  final List<Reflection> reflectionList; // 反省 → Reflection

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
                  'Reflections', // 反省一覧 → Reflections
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
                    return ListTile(
                      title: Text(
                        'Reflection ${index + 1}', // 反省内容 → Reflection
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        reflectionList[index].date.toString(), // 日付 → date
                        style: const TextStyle(color: Colors.white),
                      ),
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
