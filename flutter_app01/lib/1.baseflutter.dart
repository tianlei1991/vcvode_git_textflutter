
/*
Container
ClipOval
image
decoration
1.
MaterialApp 程序根app
home（主页） title（标题） color（颜色） theme（主题） routes（路由）
Scaffold   appBar  body 

home ， Sacffold （Materia也是一个类似强大的空间）有tarbar
appBar:导航栏
body:显示的界面
*/
import 'package:flutter/material.dart';


class MyApp2 extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
 
    
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "远程图片加载"
            ),
          ),
          body: HomeContent(),
        ),

    );
  }

}
/*
1. Container   容器 ，本地图片读取
alignment  对齐方式
decoration 边框 （可以进行裁剪）

Center 居中

*/
class MyApp1 extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("本地图片读取"),
          ),
          body: HomeContent(),
      ),

    );
  }
}
/*
Image:图片
NetworkImage 网络图片
*/

class  HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //终极裁剪圆形
      // child:Container(
      //   child:ClipOval(
      //     child:Image.network(
      //       "网址",
      //      height: 100,
      //      width: 200,
      //      fit: BoxFit.cover,
      //     ),
      //   )
      // )

      child: Container(
        height: 300,
        width: 300,
        alignment: Alignment.bottomLeft,
       //网络 
        child: Image.network("网址",
        color: Colors.blue,
        colorBlendMode: BlendMode.screen,
        fit: BoxFit.contain,
        ),
        //本地
        // child: Image.asset("本地图片路径",
        // fit: BoxFit.cover,
        // ),
        //圆形，
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage("网址"),
            fit: BoxFit.cover
          )
        
        ),
        
      ),

    );
  }
}
/*
MaterialApp  
home（主页） title（标题） color（颜色） theme（主题） routes（路由）
Scaffold   appBar  body 
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "我是一个标题",
      color: Colors.red,
      theme:ThemeData.light() ,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "flutter hello",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              ),
          ),
        ),
        // body: MyHome(
          
        // ),
        
      ),
      
    );

    
}

/*
Text:
fontSize
fontWeight
backgroundColor
*/
}
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center( //这个确保的是在中间的
      child: Text(
        "我是body里面的东西",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          backgroundColor:Colors.red, 
        ),
        
      ),


    );
  }
  
}
