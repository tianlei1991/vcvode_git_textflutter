import 'package:flutter/material.dart';
List listData=[
      {
          "title": 'Candy Shop',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/1.png',
      },
       {
          "title": 'Childhood in a picture',
          "author": 'Google',
          "imageUrl": 'https://www.itying.com/images/flutter/2.png',
      },
      {
          "title": 'Alibaba Shop',
          "author": 'Alibaba',
          "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      },
      {
          "title": 'Candy Shop',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/4.png',
      },
       {
          "title": 'Tornado',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/5.png',
      },
      {
          "title": 'Undo',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/6.png',
      },
      {
          "title": 'white-dragon',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/7.png',
      }      

  ];
/*
Expanded 不懂
Column Y 轴流式布局 ，
MainAxisAlignment:   start end center 在Y轴的那个位置
X轴
crossAxisAlignment： start end center  
*/
class  LayouDemos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

     return Container(
       color: Colors.black26,
       width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Y轴
        crossAxisAlignment: CrossAxisAlignment.center,//x轴
 // crossAxisAlignment: CrossAxisAlignment.start,     //用的比较少

        children: <Widget>[
          IconContainer(Icons.search,color: Colors.blue),
          IconContainer(Icons.home,color: Colors.orange),
          IconContainer(Icons.select_all,color: Colors.red)
        
      ],),

    );
   
  }
/*
Row  X 主轴 布局。
Expanded   元素站整个父 Row /Column 的比例
SizedBox  间隔距离
fit: BoxFit.cover 图像自动不变形 不拉伸
*/

      Widget buildcolumnRowExpanded(BuildContext context) {
           return Column(
            children: <Widget>[
              Row(
                children:<Widget>[
                  Expanded(
                    child: Container(
                      height:180,
                      color:Colors.black,
                      child:Text("你好啊")
                    )

                  )
                ]
              ),
              SizedBox(height: 30),

              Row(children: <Widget>[
                SizedBox(width: 10),
                Expanded(
                  flex: 2,  
                  // SizedBox(width: 10),
                  child: Container(
                    

                    child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 180,
                    ),
                  )),
                  
                  SizedBox(width: 10),

                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(0, 0, 10, 0) ,

                      height: 180,
                    child:ListView(
                      children: <Widget>[
                        Container(
                        height: 85,
                        child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10),
                        Container(
                        height: 85,
                        child: Image.network("https://www.itying.com/images/flutter/4.png",fit: BoxFit.cover),
                  ),
                      ],
                      
                    )
                    )
                  
                  ),
                 
              ],)
            ],
          );

      }

      
/*
Expanded 等分使用的 ，布局
flex 可以设置倍数，
*/
    Widget buildsself(BuildContext context) {
        return Row(
          children: <Widget>[
            Expanded(
              child: IconContainer(Icons.home,color: Colors.orange),
              flex: 1,
            ),
            Expanded(
              child: IconContainer(Icons.select_all,color: Colors.red),
              flex: 1,
              ),
            Expanded(
              child: IconContainer(Icons.search,color: Colors.blue,),
              flex: 1,

            ),
          ],

        );
        
    }


}
//Column 组件 Y轴布局
  Widget buildcolumn(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,

        children: <Widget>[
          IconContainer(Icons.search,color: Colors.blue),
          IconContainer(Icons.home,color: Colors.orange),
          IconContainer(Icons.select_all,color: Colors.red)
        
      ],),

    );

  }
//自定义
  Widget buildButton(BuildContext context) {
      return IconContainer(Icons.search,color: Colors.black);
  }
//pading  外边距布局
  Widget testpadings(BuildContext context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/1.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/2.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/3.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/4.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/5.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/6.png"),
          ),
        ],
        ),
      );

  }



class IconContainer extends StatelessWidget{
  double size=32.0;
  Color color=Colors.red;
  IconData icon;
  //可选值 {}
  IconContainer(this.icon,{this.color,this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size,color: Colors.white)
      ),
    );

  }
}
