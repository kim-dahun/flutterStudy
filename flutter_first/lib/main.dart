import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// runApp 함수에는 반드시 인자로 위젯을 전달해야 함.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "짝퉁 앱",
      theme: ThemeData(
            primaryColor: Colors.yellow
            ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('이게 한글 제목2'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0,

        ),
        body: Center( // 반드시 화면 정중앙에 들어가는 것은 아님 왜냐하면, Column 처럼 세로 값을 통제하지 않는 위젯을 만나면 그 기준에서 중앙을 맞추기 때문이다.
          child:Column( // 자식 위젯들에게 높이의 제한이 없으니 고정없이 맘대로 지정해도 된다라는 속성을 전달
            mainAxisAlignment: MainAxisAlignment.center, // 세로 축 조정하는 속성
            children: [
              Text('Heloo'),
              Text('Heloo'),
              Text('Heloo')
            ],
          )
        )
    );
  }
}
