import 'package:flutter/material.dart';
import 'package:valorantmaster/mainfolder/out.dart';
import 'reflection.dart';

class InPage extends StatelessWidget {
  const InPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 反省リスト
    List<Reflection> reflectionList = [];

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/MainPage.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView(
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
                  const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: '反省内容を入力してください', // 日本語で表示
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 5,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // TextFieldに入力された内容を取得
                      String content = _reflectionContentController.text;  // _reflectionContentController を使用

                      // 反省クラスのインスタンスを作成
                      Reflection reflection = Reflection(content, DateTime.now());

                      // 反省リストに追加
                      reflectionList.add(reflection);

                      // 保存処理

                      // 画面遷移
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OutPage(reflectionList: reflectionList),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900],
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                    child: const Text('保存'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
