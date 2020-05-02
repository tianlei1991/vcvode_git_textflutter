import 'package:flutter/material.dart';
import './4.Layous.dart';

//aspectRatio 宽度/高度
class AspectRatiodome extends StatelessWidget{
/*
Card  ，分上段下端的， 更加像一个cell  配合listview使用的，
"title": 'Candy Shop',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying
*/

@override
Widget build(BuildContext context) {
  return ListView(
    children: listData.map((vluas){
     return  Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio( //圆
          aspectRatio: 16/9,
          
          // child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover),
          child: Image.network(vluas["imageUrl"]),

          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(vluas["imageUrl"]),
          //  child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,),
          //  backgroundImage: NetworkImage("https://www.itying.com/images/flutter/2.png"),

            ),
            //  title: Text("我是下一个是"),
              // subtitle: Text("你是上一个"),
            title: Text(vluas["title"]),
            subtitle: Text(vluas['author']),
            
          ),
            
          ],
        ),
      );

    }).toList(),
  );

}
  @override
  Widget buildCard(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.network( "https://www.itying.com/images/flutter/2.png",
                fit: BoxFit.cover,),
              ),
              ListTile(
                title: Text("我是下一个是"),
                subtitle: Text("你是上一个"),
              )
            ],
          ),
        ),
         Card(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network("https://www.itying.com/images/flutter/2.png"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                ),
                title: Text("加AspectRatio的"),
                subtitle: Text("老师写的"),
              )
            ],
          ),
        ),
         Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.network(
                "https://www.itying.com/images/flutter/2.png",
                fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text("我是下一个是3"),
                subtitle: Text("你是上一个4"),
              )
            ],
          ),
        ),
         Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.network(
                "https://www.itying.com/images/flutter/2.png",
                fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text("我是下一个是5"),
                subtitle: Text("你是上一个6"),
              )
            ],
          ),
        ),
      ],
     
    );

 
 }
Widget Testcart (){
  
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.start ,
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
          
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.brown,
          
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
          
        ),
      ],
    );
    
  Widget builds(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三"),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("着是下一个"),
                subtitle: Text("攻城狮"),

              )
            ],
          ),
        ),
          Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三"),
                subtitle: Text("高级工程师"),
              )
            ],
          ),
        ),
         Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三"),
                subtitle: Text("高级工程师"),
              )
            ],
          ),
        ),
         Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三"),
                subtitle: Text("高级工程师"),
              )
            ],
          ),
        ),
      ],

    );
  }
  
}

}

    // return AspectRatio(
    //   aspectRatio:1.0 /1.0,
    //   child: Container(
    //       color: Colors.red,
    //   ),

    // );
