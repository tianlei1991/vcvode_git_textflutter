import 'package:flutter/material.dart';

class StackPages extends StatefulWidget {
  StackPages({Key key}) : super(key: key);

  @override
  _StackPagesState createState() => _StackPagesState();
}

class _StackPagesState extends State<StackPages> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.black26,
        //Stack 一堆
        child: Stack(
          children: <Widget>[
            //排列
            Align(
                alignment: Alignment(1, -0.2),
                child: Icon(Icons.home, size: 40, color: Colors.red)),
            Align(
                alignment: Alignment.center,
                child: Icon(Icons.search, size: 30, color: Colors.red)),
            Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.select_all, size: 40, color: Colors.red))
          ],
        ),
      ),
    );
  }
}

/// Container
class ContenPage extends StatefulWidget {
  ContenPage({Key key}) : super(key: key);

  @override
  _ContenPageState createState() => _ContenPageState();
}

class _ContenPageState extends State<ContenPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.red),
          alignment: Alignment.centerRight,
          child: Text("data"),
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Container(
              height: 200,
              width: double.infinity,
              foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(1.0, 1.1), //设置大小阴影
                        spreadRadius: 10, //四周扩散阴影
                        blurRadius: 10.0 //模糊
                        )
                  ])),
        ),
      ],
    );
  }
}

// ClipOval,// image
class IMGDome extends StatelessWidget {
  const IMGDome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
              child: ClipOval(
            //这个貌似不需要啥，还是一个容器 他就是来搞员的
            child: Container(
                height: 20,
                width: 20,
                child: Image.network(
                  "http://pic1.win4000.com/pic/c/cf/cdc983699c.jpg",
                  fit: BoxFit.cover,
                )),
          )),
        ),
        
      ],
    );
  }
}
