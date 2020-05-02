import 'package:flutter/material.dart';


/*
浮动按钮 咸鱼效果 ，中间大按钮
*/
class TablesxyDome extends StatefulWidget {
  TablesxyDome({Key key}) : super(key: key);

  @override
  _TablesxyDomeState createState() => _TablesxyDomeState();
}

class _TablesxyDomeState extends State<TablesxyDome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('咸鱼按钮')
      ),
      //设置在dockd中心
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: Container(
        height:80,
        width:80,
        //外边距
        padding:EdgeInsets.all(8),
        //内边距
        margin:EdgeInsets.only(top:10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40)
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print("修改页面");
          },
          backgroundColor: Colors.yellow,
        ),
      ),
      body: Text("data"),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("首页"),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            title: Text("Game"),
            icon: Icon(Icons.games)
          ),
          BottomNavigationBarItem(
            title: Text("cat"),
            icon: Icon(Icons.call_made)
          )
        ],
        onTap: (int inex){
          setState(() {
            print('调转');
          });
          
        },
      ),
    );
  }
}