import 'package:flutter/material.dart';


/*
Drawer 抽屉效果

*/

class DeawerDome extends StatefulWidget {
  DeawerDome({Key key}) : super(key: key);

  @override
  _DeawerDomeState createState() => _DeawerDomeState();
}

class _DeawerDomeState extends State<DeawerDome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flteerapp"),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            // DrawerHeader(
            //      child: ListView(
            //       children: <Widget>[
            //         Text("我是一个头部")
            //       ],
            //     ),
            //     decoration: BoxDecoration(
            //       color: Colors.yellow,
            //       image: DecorationImage(
            //         image: NetworkImage("https://www.itying.com/images/flutter/2.png"),
            //         fit: BoxFit.cover
            //       )
            //     ),
            // ),

            UserAccountsDrawerHeader(
              accountName: Text("不下雨的广大"),
              accountEmail: Text("@dageitying.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://www.itying.com/images/flutter/1.png"),
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.itying.com/images/flutter/3.png"),
                      fit: BoxFit.cover)),
              otherAccountsPictures: <Widget>[
                Image.network("https://www.itying.com/images/flutter/4.png"),
                Image.network("https://www.itying.com/images/flutter/5.png"),
                Image.network("https://www.itying.com/images/flutter/6.png")
              ],
            ),
            ListTile(
                title: Text("个人中心"),
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                )),
            Divider(),
            ListTile(
                title: Text("系统设置"),
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                )),
            Divider(),

            ListTile(
                title: Text("发现"),
                leading: CircleAvatar(
                  child: Icon(Icons.drive_eta),
                ))
          ],
        ),
      ),
      // endDrawer: Drawer(
      //   child:Text("右侧侧边栏")
      // ),
    );
  }
}
