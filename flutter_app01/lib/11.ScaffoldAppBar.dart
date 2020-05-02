import 'package:flutter/material.dart';

//--------------------------------------------------------------------导航栏------------------------------------------------------------------------------------------------------------
class Navgatbar extends StatefulWidget {
  Navgatbar({Key key}) : super(key: key);

  @override
  _NavgatbarState createState() => _NavgatbarState();
}
/*
 TabController -> body Tabbarview 就是一个列表，appBar，Tab按钮  ，控制滑动布局， Controller控制页面转换
 Scaffold ->AppBar->bottom ->Tabbar 
Scaffold ->BottomNavigationBar

*/
class _NavgatbarState extends State<Navgatbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(

      appBar: AppBar(
        
         centerTitle:true,
        bottom: TabBar(
          isScrollable: true,
          tabs:<Widget>[
            Container(
            decoration: BoxDecoration(
              border: Border.all(
                 width: 1,
                color: Colors.red
              )
            ),  
            child:Tab(text:"热门1"),
            ),
            Tab(text:"推荐2"),
             Tab(text:"热门3"),
              Tab(text:"热门4"),
               Tab(text:"热门5"),
                Tab(text:"热门6"),
                 Tab(text:"热门7"),
                  Tab(text:"热门8"),
          ] 
        
        )


        //----------------------------appbar 基本使用--------------------------------------
        // leading: Icon(Icons.search),
        // title: Text("自定义"),
      //   // actions: <Widget>[
      //     backgroundColor: Colors.red,
      //     leading: IconButton(icon: Icon(Icons.send), 
      //     tooltip: "Search",
      //     onPressed: (){
      //         print("点击了");
      //     }),
      //     title: Text("navbar"),
      //     actions: <Widget>[
      //       IconButton(icon: Icon(Icons.search), onPressed: (){
      //         print("点击了seatch");
      //       }),
      //       IconButton(icon: Icon(Icons.home), onPressed: (){
      //           print("点击了home");
      //       }),
      //     ],
          

      //   // ],
      ),
      body: TabBarView(children: <Widget>[
        ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),ListView(
          children: <Widget>[
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
            ListTile(title:Text("着是一个简单的tab")),
          ],
        ),
        
      ],)
    )
    );
  
  }
}

class AppbarDome extends StatefulWidget {
  AppbarDome({Key key}) : super(key: key);

  @override
  _AppbarDomeState createState() => _AppbarDomeState();
}

class _AppbarDomeState extends State<AppbarDome> with SingleTickerProviderStateMixin {

  TabController _tabController;
  

  @override
  void dispose() { //释放函数
    _tabController.dispose();
    super.dispose();
  }
  @override
  void initState(){ //初始化函数
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2
    );
    //点击按钮时候的改变
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "顶部tab切换",
        
        ),
        bottom: TabBar(
          
          controller: this._tabController,
          tabs: <Widget>[
          Tab(
            icon:Icon(Icons.directions_bike),
          ),
          Tab(
            icon:Icon(Icons.search),
          ),
        ]
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: Text("热销")),
           Center(child: Text("是是")),

        ],
      ),
    );
  }
}

// class TabBarControllerPage extends StatefulWidget {
//   TabBarControllerPage({Key key}) : super(key: key);

//   _TabBarControllerPageState createState() => _TabBarControllerPageState();
// }

// class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {

//   TabController _tabController;

//   @override
//   void dispose() {   //生命周期函数
//     super.dispose();
//     _tabController.dispose();
//   }

//   @override
//   void initState() {   //生命周期函数  初始化
//     super.initState();
//     _tabController=new TabController(
//       vsync: this,//固定写法？
//       length: 2
//     );
//     _tabController.addListener((){

//       print(_tabController.index); 

//     });
//   }  


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("TabBarControllerPage"),
//         bottom: TabBar(
//           controller: this._tabController,  //注意
//           tabs: <Widget>[
//             Tab(text:"热销"),
//             Tab(text:"推荐"),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: this._tabController,  //注意
//         children: <Widget>[
//           Center(child: Text("热销")),
//           Center(child: Text("推荐"))
          
//         ],
//       ),
//     );
//   }
// }