import 'package:flutter/material.dart';
import 'dart:async';
/*
弹框 ，自定义
*/
class alertDome extends StatefulWidget {
  alertDome({Key key}) : super(key: key);

// _alerdialog(){
//   showDialog(context: context,builder:context )
// }
  @override
  _alertDomeState createState() => _alertDomeState();
}

class _alertDomeState extends State<alertDome> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Mydialog("titles","这个是内容"),
    );
  }
}
class Mydialog extends Dialog{
String titles;
String content;
Mydialog(this.titles,this.content);


//定时器
_showTimer(context){
  // print("_showTimer");
  // print(context);
  var timer = Timer.periodic(
    Duration(milliseconds: 300), (tim) {
    print("执行");
    // Navigator.pop(context);
    tim.cancel();
   });
  //  timer.cancel();
}


  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      // type:MaterialType.transparency,
      // child:Text("自定义dialog")
      child: Center( //配置作用居中
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
       child: Column(
          children: <Widget>[
            Padding(
              padding:EdgeInsets.all(10),
              child:Stack(
                children: <Widget>[
                   Align(
                    alignment: Alignment.center,
                    child: Text("${this.titles}"),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    child: Icon(Icons.close),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                )
                ],
               
              
               
              ), 
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              width:double.infinity,
              child:Text("${this.content}",textAlign: TextAlign.left),
              
            )
          ],
        ),

        )
      ),
    );
  }
}