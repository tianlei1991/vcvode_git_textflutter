
import 'package:flutter/material.dart';
/*
时间的显示
*/
class DateTimeDome extends StatefulWidget {
  DateTimeDome({Key key}) : super(key: key);

  @override
  _DateTimeDomeState createState() => _DateTimeDomeState();
}

class _DateTimeDomeState extends State<DateTimeDome> {
    var _nowdata = new DateTime.now();//当前日期



_showDateOicker() async{
  // showDatePicker(
  //   context: context, 
  //   initialDate: _nowdata, 
  //   firstDate: DateTime(1980) , 
  //   lastDate: DateTime(2100)).then((result){
  //       print(result); //获取异步的数据
  //   });
//等待完成  ，Future  这个类是一个异步， 可以用then 获取，也可以用，异步来获取，
//调用异步必须是异步方法。 异步和await 是一起使用的。
  var  result = await showDatePicker(  //这个是异步
  context: context, 
  initialDate:  DateTime.now(), 
  firstDate: DateTime(1980),
   lastDate: DateTime(2100)
  );
  //获取时间
  var times = showTimePicker(context: context, initialTime: null);
  print(result);
//修改 时间
  setState(() {
    this._nowdata = result;
  });
}

  @override
void initState() {
    // TODO: implement initState
  // var now = new DateTime.now();//当前日期
  // DateTime.fromMicrosecondsSinceEpoch()  转换时间戳
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("datepicker"),

      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(  //可以传递时间的组件
          child:  Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text("20190-12-12"),
         ],
        ),
        onTap: (){
          print("点击到了");
          _showDateOicker();
        },
        ),
       
      ],

      ),

    );
  }
}
