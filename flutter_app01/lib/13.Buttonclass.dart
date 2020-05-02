import 'package:flutter/material.dart';


/*
button 类型
*/
class Buttonpage extends StatelessWidget {
  const Buttonpage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("按钮类")),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: (){
                  print("浮动");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                      height: 60,
                      margin: EdgeInsets.all(20),
                      child: RaisedButton(
                        child: Text("带圆角的按钮"),
                        textColor: Colors.white,
                        color: Colors.blue,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          print("带圆角的按钮");
                        },
                      )),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 60,
                    width: 200,
                    child: RaisedButton(
                      child: Text("有宽高"),
                      textColor: Colors.blue,
                      elevation: 10,
                      onPressed: () {
                        print("有宽高");
                      },
                    )),
                SizedBox(height: 40),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                      height: 60,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        child: Text("全屏按钮"),
                        textColor: Colors.white,
                        color: Colors.blue,
                        elevation: 10,
                        onPressed: () {
                          print("全屏按钮");
                        },
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("普通按钮"),
                  onPressed: () {
                    print("普通按钮");
                  },
                ),
                RaisedButton(
                  child: Text("有颜色的按钮"),
                  textColor: Colors.blue,
                  color: Colors.brown,
                  onPressed: () {
                    print("有颜色的按钮");
                  },
                ),
                RaisedButton(
                  child: Text("阴影按钮"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  elevation: 10, //设置阴影
                  onPressed: () {
                    print("阴影按钮");
                  },
                ),
              ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

              ButtonBar(
                // alignment:MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("登录"),
                    onPressed: () {
                      print("登录");
                    },
                  ),
                  RaisedButton(
                    child: Text("登录"),
                    onPressed: () {
                      print("注册");
                    },
                  ),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
class SelfButton extends StatefulWidget {

  String titles;
  double height;
  double widht;
  SelfButton({Key key,this.titles="默认值",this.height=40.0,this.widht = 40.0}) : super(key: key);

  @override
  _SelfButtonState createState() => _SelfButtonState(titles: this.titles,height:this.height,widht: this.widht);
}

class _SelfButtonState extends State<SelfButton> {
  String titles;
  double height;
  double widht;
  _SelfButtonState({this.titles,this.height,this.widht});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.widht,
       child: RaisedButton(
         child: Text(this.titles),
         onPressed: (){
           print("哈哈");
         },

       ),
    );
  }
}