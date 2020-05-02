import 'package:flutter/material.dart';


/*
    //scaffold   bottomNavigationBar  item. 就是tabbar button
    
    点击切换swdget  先定义一个数组，在动态改变索引值


*/
class TestAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Tabs(
      )
    );
  }
}
class Homewidgets extends StatefulWidget {
  Homewidgets({Key key}) : super(key: key);

  @override
  _HomewidgetsState createState() => _HomewidgetsState();
}

class _HomewidgetsState extends State<Homewidgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color:Colors.red,
            height: 50,
            width: 50,
          ),
        
        ),
         Expanded(
          flex: 1,
          child: Container(
            color:Colors.blue,
            height: 50,
            width: 50,
          ),
        
        ),
         Expanded(
          flex: 1,
          child: Container(
            color:Colors.yellow,
            height: 50,
            width: 50,
          ),
        
        ),
      ],
      
    );
  }
}

class SetingPage extends StatefulWidget {
  SetingPage({Key key}) : super(key: key);

  @override
  _SetingPageState createState() => _SetingPageState();
}

class _SetingPageState extends State<SetingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
         children: <Widget>[
           ListTile(
             title:Text("哈哈按时肯定会静安寺"),
             subtitle:Text("An Observatory debugger and profiler on iPhone 11 Pro Max is available at: http://127.0.0.1:54438/4u4OjtIGrVY=/")
           ),
           ListTile(
             title:Text("哈哈按时肯定会静安寺"),
             subtitle:Text("An Observatory debugger and profiler on iPhone 11 Pro Max is available at: http://127.0.0.1:54438/4u4OjtIGrVY=/")
           ),
           ListTile(
             title:Text("哈哈按时肯定会静安寺"),
             subtitle:Text("An Observatory debugger and profiler on iPhone 11 Pro Max is available at: http://127.0.0.1:54438/4u4OjtIGrVY=/")
           ),
           ListTile(
             title:Text("哈哈按时肯定会静安寺"),
             subtitle:Text("An Observatory debugger and profiler on iPhone 11 Pro Max is available at: http://127.0.0.1:54438/4u4OjtIGrVY=/")
           ),
           ListTile(
             title:Text("哈哈按时肯定会静安寺"),
             subtitle:Text("An Observatory debugger and profiler on iPhone 11 Pro Max is available at: http://127.0.0.1:54438/4u4OjtIGrVY=/")
           ),
           ListTile(
             title:Text("哈哈按时肯定会静安寺"),
             subtitle:Text("An Observatory debugger and profiler on iPhone 11 Pro Max is available at: http://127.0.0.1:54438/4u4OjtIGrVY=/")
           ),
         ],
       ),
    );
  }
}

class CategoryPages extends StatefulWidget {
  CategoryPages({Key key}) : super(key: key);

  @override
  _CategoryPagesState createState() => _CategoryPagesState();
}

class _CategoryPagesState extends State<CategoryPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
            Container(
              height:100,
              width:100,
              color:Colors.red,
            ),
            Container(
              height:100,
              width:100,
              color:Colors.orange,
            ),
            Container(
              height:100,
              width:100,
              color:Colors.yellow,
            ),
         ],
       )
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  List _pageList = [
    Homewidgets(),
    SetingPage(),
    CategoryPages(),
  ];
  int _cuttentIndex = 0;
  @override
  Widget build(BuildContext context) {
    //scaffold  有appbar , bottomNavigationBar  .
    return Scaffold(
      body: this._pageList[this._cuttentIndex],
      
      appBar: AppBar(
        title:Text("appTabDemo"),
      ),
      //设置tabar BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        //设置按钮个数
        currentIndex: this._cuttentIndex,
        //循环按钮index
                  // currentIndex: 1,
        //回调方法 
        onTap: (int index ){
          setState(() {
           print(index);
            this._cuttentIndex = index;
           
          });

        },
        iconSize: 40.0,//图标的大小
        fixedColor: Colors.red,//选中颜色

        type: BottomNavigationBarType.fixed,//设置多个按钮
        items: [
          BottomNavigationBarItem(
            icon: Image.network("https://www.itying.com/images/flutter/1.png"),
            title: Text("首页"),

          ),
         BottomNavigationBarItem(
           icon: Center(
             child: Image.network("https://www.itying.com/images/flutter/1.png",
             height: 20,
             width: 20,
             ),
           ),
           title: Text("分类"),
           backgroundColor: Colors.red,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           title: Text("设置"),
           backgroundColor: Colors.red,


         )
        ],
      ),
    );
  }
}
// class Homepage extends StatefulWidget {
