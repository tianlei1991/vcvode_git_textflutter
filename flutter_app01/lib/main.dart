

import 'package:flutter/material.dart';
import 'jsontest.dart';
import 'pages/navgation.dart';
//------------------------------常用路由--------------------------------------------------------------------------------------------------------------------------------------------------

final routes = {
  // '/': (context) => alertDome(),
  // '/':(context)=>ScaffoldWidget(),
  // "TLdome3":(context)=>TLdome3(),
  // "TLHome1":(context)=>TLHome1(),
  // "TLdome2":(context)=>TLDome2(),

  // "TLdome4":(context,{arguments})=>TLdome4(arguments :arguments),
  // "TLdome5":(context,{arguments})=>TLdome5(arguments: arguments),
  // "TLdome6":(context,{arguments})=>TLdome6(arguments: arguments),
};
// class RouteSettings {
//   /// Creates data used to construct routes.
//   const RouteSettings({
//     this.name,
//     this.arguments,
//   });
Function myonGenetateRoute = (RouteSettings settings) {
  //取出 name
  final String name = settings.name;
  print(name);
  //取出方法，方法名  ， 这个取出来就是一个对象
  final Function pageContentBuilder = routes[name];
  //判断路由是否为空 和参数都不为空，就走传参数
  if (pageContentBuilder != null && settings.arguments != null) {
    print("传值");
    final Route route = MaterialPageRoute(builder: (context) {
      print(settings.arguments);
      return pageContentBuilder(context, arguments: settings.arguments);
    });
    return route;
  } else {
    print("不传值");
    //如果参数为空就直接调用
    final Route route = MaterialPageRoute(builder: (context) {
      return pageContentBuilder(context);
    });
    return route;
  }
};
//tabar 定义
void main() {
  // runApp(MyApp());
  runApp(TestAPP());
}


class TestAPP extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:Navgetion() ,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: myonGenetateRoute,
      // initialRoute: '/',
    );
  }
}





class testApp extends StatelessWidget {
  const testApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ClipOval(),
        leading:Icon(Icons.arrow_back_ios,color: Colors.red,),
        
      ),
      body: tableviewstestone(),
    );
  }
}

  final data  = [
    "image1",
    "imgge2",
    "imgae3",
    "imgag4",
    "imgag5",
    "imgag6",
    "imgag7",
    "imgag8",
  ];

class tableviewstestone extends StatelessWidget {
  const tableviewstestone({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left:20,top: 20,right: 20)
    ,
    child: ListView(
       	
		      // physics: new NeverScrollableScrollPhysics(),		//禁用滑动事件

      children: <Widget>[
        
        Text("Good Mornng\nHello",style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w200,
          fontSize: 50.0
        ),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            color:Colors.red,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
           children: <Widget>[
             Row(
                children:<Widget>[
                Padding(padding: EdgeInsets.only(left:20,top: 20),
                    child: Text("图片"),
                ),
                 
                Padding(padding: EdgeInsets.only(left:20,top: 20,right: 20),
                    child: Text("We Have nice offers for \n you facoiter bands",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),),
                ),             
                ]

             ),
            SizedBox(height: 40,),
            Padding(padding: EdgeInsets.all(10),
              child:  Container(
                   width: 50,
                   height: 50,
                   color: Colors.white,
                   child:Text("asdasdasd")
              )
         
          ,)
           ],
            
        ),
          

        ),
        SizedBox(height: 20,),
        Text("askjdaskldjlkasjdlk"),
    //     ListView.builder(
    //   itemCount: listData.length,
    //   itemBuilder: this._getListData,
    // );
        // ListView.builder(itemBuilder: creatrlistview,
        // itemCount: 5,

        // )
        SizedBox(height: 20,),
    //     ListView.builder(
    //       scrollDirection:Axis.horizontal,
    //   	shrinkWrap: true, 		
    //    itemCount: 5,
    //   itemBuilder: creatrlistview,
    // )
    		      // physics: new NeverScrollableScrollPhysics(),		//禁用滑动事件
        Container(
          height: 100,
          child: ListView(
          scrollDirection:Axis.horizontal,
        	shrinkWrap: true, 	
          physics: NeverScrollableScrollPhysics(),	
          children: <Widget>[
            Text("1"),
            Text("1"),
            Text("1"),
            Text("1"),
          
          ],
        
        ),
        ),
  
      ],
      
      
    ),
    );
  }
}


Widget creatrlistview(BuildContext context, int index){
    return  Row(
      children: <Widget>[
        // Expanded(child:Container(
        //         height:10,
        //         width:10,
        //         color:Colors.red,
        //       ),
        // )
        Text("11"),
       
      ],
    );
}


/*
https://pub.dev/packages/date_format 第三方库
https://pub.dev/自己搜索  ，需要的，
pubspec.yaml   dependencies    配置 ，自动下载如果不自动下载，
cd 到当前目录下自己持续 flutter pakages get 

轮播图， swiper  https://pub.dev/packages/swiper
http： get post  均到pub.dev  下载使用
*/


