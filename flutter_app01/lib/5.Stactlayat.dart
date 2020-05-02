import 'package:flutter/material.dart';


/*
Stack 默认是在一推的，
Positioned  以widget（Stack） 为中心，布局

*/
class LayoutDemo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      
     return Center(
      child: Container(
        height:400,
        width:300,
        color:Colors.red,
        child:Stack(
          children: <Widget>[
            Positioned(
              left: 5,
              child: Icon(Icons.send,size: 40,color: Colors.white),

            ),
            Positioned(
              right: 5,
              child: Icon(Icons.search,size: 30,color: Colors.black26),
            ),
            // SizedBox(width: 30),
            Align(
               child: Icon(Icons.settings,size: 30,color: Colors.blue),
               alignment: Alignment.topCenter,

            ),

          ],


        )
      ),
    
  );
    


    // return Center(
    //   child: Container(
    //     height: 400,
    //     width: 300,
    //     color: Colors.black26,
    //     //Stack 一堆
    //     child: Stack(
    //       children: <Widget>[
    //         //排列
    //         Align(
    //           alignment:Alignment(1,-0.2),
    //           child:Icon(Icons.home,size:40,color:Colors.red)
    //         ),
    //         Align(
    //           alignment:Alignment.center,
    //           child:Icon(Icons.search,size:30,color:Colors.red)

    //         ),
    //          Align(
    //           alignment:Alignment.bottomRight,
    //           child:Icon(Icons.select_all,size:40,color:Colors.red)

    //         )
    //       ],
    //     ),

    //   ),
    // );
  }

    Widget buildStack (BuildContext context) {
      return Stack(
        alignment: Alignment(1, 0.3),
      children: <Widget>[
        Container(
          height:400,
          width:300,
          color:Colors.red,
        ),
        Text(
          "我是一个文本",
          style:TextStyle(
            fontSize:30,
            color: Colors.white

          )
        ) 
      ],
      );
    }

      Widget buildStack1(BuildContext context) {
        return Center(
          child: Stack(
            alignment:Alignment(1,0.3),
            children:<Widget>[
              Container(
                height:400,
                width:300,
                color:Colors.red,


              ),
              Text(
                "我是一个文本",
                style:TextStyle(
                  fontSize:30,
                  color:Colors.white
                )
              )
            ]

          ),
          

        );
      
      }

    Widget buildStack2(BuildContext context) {
      return Center(
        child: Stack(
          alignment:Alignment.topLeft,
          children:<Widget>[
            Container(
              height:400,
              width: 300,
              color: Colors.red,

            ),
            Text(
            "我是一个文本",
            style: TextStyle(
              color:Colors.red,
              fontSize:40,
            ),
            )
          ]
        ),

      );
    }
    Widget buildPositioned (BuildContext context) {
    
    return Center(
      child: Container(
        height:400,
        width:300,
        color:Colors.red,
        child:Stack(
          children: <Widget>[
            Positioned(
              left: 5,
              child: Icon(Icons.send,size: 40,color: Colors.white),

            ),
            Positioned(
              right: 5,
              child: Icon(Icons.search,size: 30,color: Colors.black26),
            ),
            Positioned(
              top: 5,
              child: Icon(Icons.settings,size: 30,color: Colors.blue),
            )


          ],


        )
      ),
    );
    }

}
