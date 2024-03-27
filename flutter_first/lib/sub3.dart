import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp4());

class MyApp4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }

}

class MySnackBar extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Center(
      child: ElevatedButton(
        child: Text('show me'),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Hello',
              textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1),
          ));
        },
      )
    );

  }

}

void flutterToast(){

  Fluttertoast.showToast(msg: '메세지 내용',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );


}