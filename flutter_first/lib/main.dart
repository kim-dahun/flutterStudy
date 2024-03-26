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
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('이게 한글 제목2'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[100],
          elevation: 0.0,

        ),
        body: Center( // 반드시 화면 정중앙에 들어가는 것은 아님 왜냐하면, Column 처럼 세로 값을 통제하지 않는 위젯을 만나면 그 기준에서 중앙을 맞추기 때문이다.
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,// 자식 위젯들에게 높이의 제한이 없으니 고정없이 맘대로 지정해도 된다라는 속성을 전달
            mainAxisAlignment: MainAxisAlignment.center, // 세로 축 조정하는 속성
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  // backgroundImage: AssetImage('경로'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey,
                thickness: 0.5,
                endIndent: 30.0,
                indent: 30.0,
              ),
              Text('NAME',style: TextStyle(
                color:Colors.black12,
                letterSpacing: 2.0
              ),),
              SizedBox(
                height: 10.0,
              ),
              Text('BBANTO',style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 30.0,
              ),
              Text('BBANTO POWER',style: TextStyle(
                  color:Colors.black12,
                  letterSpacing: 2.0
              ),),
              SizedBox(
                height: 10.0,
              ),
              Text('14',style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),)
                ],
              ),Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('face hero tattoo',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),)
                ],
              ),Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('fire flames',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),)
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 40.0,
                )
              )
            ],
          )
        )
    );
  }
}
