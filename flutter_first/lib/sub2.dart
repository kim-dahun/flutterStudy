import 'package:flutter/material.dart';


void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext buildctx){ // builder를 사용하지 않을 경우, SnackBar를 설치할 Scatffold를 최상위 MyApp3에서 찾게됌
          // 이 경우 이미 Scaffold는 MyApp3 하위에 있기 때문에 찾을 수 없음. 따라서 빌더를 사용해서 빌더 하위부터 다시 노드를 역탐색하는 방식으로
          // Scaffold를 찾을 수 있도록 설정한 것.
          return Center(
              child:TextButton(
                child:Text('show me',
                  style: TextStyle(
                      color:Colors.white
                  ),),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('예야')
                      )
                  );
                },
              )
          );
        },
      )
    );
  }

}