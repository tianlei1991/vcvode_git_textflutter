import 'package:flutter/material.dart';

// }
/*
StatefulWidget  可以改变的widget
改变的时候调用 setstate（）{}
初始化函数  initState 在这里进行数据的请求。



*/
//stateful 生成  StatefulWidget
class Homepages extends StatefulWidget {
  Homepages({Key key}) : super(key: key);

  @override
  _HomepagesState createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {

  var  count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Chip(
             label: Text("等于${this.count}")),
             RaisedButton(
               child: Text("增加"),
               onPressed: (){
                 setState(() {
                   this.count++;
                 });
               },
             )

         ],
       )
    );
  }
}

class ListFulbuton extends StatefulWidget {
  ListFulbuton({Key key}) : super(key: key);

  @override
  _ListFulbutonState createState() => _ListFulbutonState();
}

class _ListFulbutonState extends State<ListFulbuton> {
  List list = List();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
       child: ListView(
         children: <Widget>[
           Column(
             children:this.list.map((valurs) {
                return ListTile(
                    title: Text(valurs),
                );
             }).toList(),
           ),
           SizedBox(height: 20),
           RaisedButton(
             color: Colors.red,
             child: Text("Butoon"),
             onPressed: (){
               setState(() {
                 this.list.add("新数据1");
               });
             },
           )


         ],
         
       ),
       
    );
  }
}