import 'package:flutter/material.dart';


class Dome1 extends StatefulWidget {
  Dome1({Key key}) : super(key: key);

  @override
  _Dome1State createState() => _Dome1State();
}

class _Dome1State extends State<Dome1> {
  
  @override
  Widget build(BuildContext context) {
    return Theme( //单独设置主题
      data: ThemeData(
       primarySwatch: Colors.red,
    //  iconTheme: IconThemeData(color: Colors.orange),//用于Icon颜色

        
      ), 
      child: Scaffold(
      appBar: AppBar(
        title: Text("听相互"),

      ),
      
      body: Center(
        child: FloatingActionButton(
          child: Text("点击我啊"),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dome2(name: "我是上一个",)));
          },
        ),
      ),
      
      

    ));
  }
}

class Dome2 extends StatefulWidget {
  Dome2({Key key,this.name}) : super(key: key);
  final String name;

  @override
  _Dome2State createState() => _Dome2State();
}

class _Dome2State extends State<Dome2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${widget.name}"),

    );
  }
}