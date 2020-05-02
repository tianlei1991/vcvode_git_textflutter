import 'package:flutter/material.dart';


/*
Wrap 自动换行的一个流失布局
*/
class Layoutwarp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(//Swiper
      alignment: WrapAlignment.start,
      runSpacing: 30,
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          child: Center(child: Text("我是一个字体"),),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black
            )
          ),
        ),
         Container(
          height: 100,
          width: 100,
          

          child: Center(child: Text("我是一个字体"),),
           decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black
            )
          ),
        ),
         Container(
          height: 100,
          width: 100,
          child: Center(child: Text("我是一个字体"),),
           decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black
            )
          ),
        ),
         Container(
          height: 100,
          width: 100,
          child: Center(child: Text("我是一个字体"),),
           decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black
            )
          ),
        ),
         Container(
          height: 100,
          width: 100,
          child: Center(child: Text("我是一个字体"),),
           decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black
            )
          ),
        ),
         Container(
          height: 100,
          width: 100,
          child: Center(child: Text("我是一个字体"),),
           decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black
            )
          ),
        ),
         Container(
          height: 100,
          width: 100,
          child: Center(child: Text("我是一个字体"),),
           decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black
            )
          ),
        ),
      ],
    )
    );
    
  }

  Widget testContainer(){
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,

      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,//x轴 主轴间距
        runSpacing: 10,//y轴间距
        
        //垂直方向
        // direction: Axis.vertical,
        children: <Widget>[
          Mybuttons("第一级"),
          Mybuttons("第2级"),
          Mybuttons("第3级"),
          Mybuttons("第4级"),
          Mybuttons("第一级"),
          Mybuttons("第s级"),
          Mybuttons("第一级"),
          Mybuttons("第s级"),
          Mybuttons("第一级"),
          Mybuttons("第2级"),
          Mybuttons("第一级"),
          Mybuttons("第一级"),
          Mybuttons("第5级"),
          Mybuttons("第一级"),
          Mybuttons("第一级"),
          Mybuttons("第5级"),
          Mybuttons("第一级"),
          Mybuttons("第7级"),
          Mybuttons("第3级"),
          Mybuttons("第一级"),
          Mybuttons("第一级"),
          Mybuttons("第一级"),
          Mybuttons("第一级"),
          Mybuttons("第4级"),
          Mybuttons("第一级"),
          Mybuttons("第一级"),
          Mybuttons("第2级"),
          Mybuttons("第一级"),
          Mybuttons("第一级"),
        ],
      ),

    );
  }
}
//自定义Button
class  Mybuttons extends StatelessWidget {
  final String text;
  const Mybuttons(this.text,{Key key}):super(key :key);
   @override
  Widget build(BuildContext context) {
    return  RaisedButton(
      child:Text(this.text) ,
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },

    );
  }
  
}
