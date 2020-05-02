import 'package:flutter/material.dart';
import './homepage.dart';
import './mom.dart';
import '../Basepages/form_page.dart';
import 'package:flutter_app01/Basepages/craddemo.dart';
import '../Basepages/warp_page.dart';
import '../Basepages/steam_demo.dart';
import '../Basepages/radir_demo.dart';
import '../Basepages/mater_dame.dart';
import 'package:flutter_app01/Basepages/keyboad.dart';

class Navgetion extends StatefulWidget {
  Navgetion({Key key}) : super(key: key);

  @override
  _NavgetionState createState() => _NavgetionState();
}

class _NavgetionState extends State<Navgetion> {
  int  _currentindex = 0;
  List _pageList = [
    Anlmstest(),
    // ListViewDemo(),
    // RadioDemo(),
    // StreamDemo(),
// Warpdemo(),
    // CardDemo(),
    Homepage(),
    // MomPage(),

    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("loctions"),
      ),
      body: _pageList[_currentindex],
     bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
       currentIndex: _currentindex,
       items: [
         BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back_ios),
          title: Text("首页"),
          
         ),
         BottomNavigationBarItem(
          icon: Icon(Icons.arrow_drop_down),
          title: Text("更多"),
         )
       ]

     ),
      
    );
  }
}
