import 'package:flutter/material.dart';


void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Appbar icon'
        ),
        centerTitle: true,
        elevation: 0.0,

        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: (){
        //     print('menu button is clicked');
        //   },
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              print('shopping cart button is clicked');
            },
          ),IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search button is clicked');
            },
          )
        ],
      ),
      drawer: Drawer( // 메뉴판
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(accountName: Text('111'), accountEmail: Text('asd@asd.com'), onDetailsPressed: (){
              print('arrow is clicked');
            },
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                // )
              ],
            decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
            ),),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850]),
              title: Text('Home'),
              onTap: (){
                print('출력해라 로그를');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                  color: Colors.grey[850]),
              title: Text('Settings'),
              onTap: (){
                print('출력해라 로그를');
              },
              trailing: Icon(Icons.question_answer),
            ),
            ListTile(
              leading: Icon(Icons.home,
                  color: Colors.grey[850]),
              title: Text('Q*A'),
              onTap: (){
                print('출력해라 로그를');
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }

}