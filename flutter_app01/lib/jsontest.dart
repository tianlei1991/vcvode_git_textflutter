import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';  
import 'domo.dart';
class JsonTest extends StatelessWidget {
  const JsonTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("json"),
      ),
      body: TestJosn(),
    );
  }
}


class TestJosn extends StatefulWidget {
  // final String arguments;
  final int counts ;
  TestJosn({Key key ,this.counts=1 }) : super(key: key);
  // final counts = 1;
  @override
  _TestJosnState createState() => _TestJosnState();
}


class _TestJosnState extends State<TestJosn> {
  
   List pl = [];
   
   Future <String> _loodpersonjson() async{
    return await rootBundle.loadString('data/person.json');
  }
  
  @override
  void initState() {
    super.initState();
    
       _loodpersonjson().then((value) {
         setState(() {
      final jsommap = json.decode(value);
      Person  p = Person.fromJson1(jsommap);
      pl.add(p);
      print("initState");
    });
    });
   
    
   
  }
 Widget rrr (BuildContext context, int index){
   Person p =   pl[index];
   print(p.name);
   print("asdasdasd");
   return Container(
     color:Colors.red,
     child: Row(
       children: <Widget>[
              Text(p.name),
              Text("data"),
       ],
   ),
     
   );
 }
  @override
  Widget build(BuildContext context) {
    print("object");
    return ListView.builder(
      itemBuilder: rrr,
      itemCount:pl.length
    );
  }
}


    // return Container(
    //    child: Row(
         
        //  children: <Widget>[
          
            // Center(
            // child:  Material(
            //   color: Colors.blueAccent,
            //   shape:  BeveledRectangleBorder(//斜角矩形边框
            //     side: BorderSide(
            //       width: 1.0,
            //       color: Colors.blueAccent,
            //       style: BorderStyle.none,
            //     ),
            //     borderRadius: BorderRadius.circular(50.0),
            //   ),
            //   child:  Container(
            //     padding: EdgeInsets.all(20.0),
            //     child:  Text('斜角矩形边框'),
            //   ),
            // ),
            // )
            
          
            

          //  Text("${p.age}"),
          //  Text("${p.height}"),

          //  Text(p.name),
    //       //  Text("${p.age}"),
    //       //  Text("${p.height}")
    //      ],
    //    ),
    // );
  // }
// }
class PageTempone extends StatefulWidget {
  PageTempone({Key key}) : super(key: key);

  @override
  _PageTemponeState createState() => _PageTemponeState();
}

class _PageTemponeState extends State<PageTempone> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        TestOff(),

      ],
      
    );
  }
}


class TestOff extends StatefulWidget {
  final Function arguments;
  TestOff({Key key,this.arguments }) : super(key: key);

  @override
  _TestOffState createState() => _TestOffState(arguments: this.arguments);
}

class _TestOffState extends State<TestOff> {
  // Function comeback;
   Function arguments;
   int nums =10;
 _TestOffState({this.arguments}){
   arguments = arguments;
  }
  Future f ;


@override
void initState(){
  super.initState();
  print("initState");

}
 @override
void reassemble() {
  super.reassemble();
  print("reassemble");
  arguments  = (){
    return 20;
  };

 }
//  @override
// void setState(VoidCallback fn){
  

// }
@override
void deactivate() {
  super.deactivate();
  print("deactivate");
 }
 @override
void dispose() {
  super.dispose();
  print("dispose");

}
void didChangeDependencies() { 
  super.didChangeDependencies();
  print("didChangeDependencies");
  
  
}

  // Future<String> runs() async{
  //   List arra = [1,2,3,4,5,66,66,6,6,6,6,6];
  //     var s = await arra.map((e) {
  //       String ss = '$e' +'$e';
  //       return ss;
  //     });
  //     return f;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(onPressed: (){

        },
        color: Colors.red,
        child: Text("这是一个按钮"),
        ),
        Offstage(
          
          offstage:true,
          
        ),
        Text("data"),
        Text("data"),
        Text("data"),
        RaisedButton(onPressed: (){
            Navigator.pop(context,"我是返回的");
            // Navigator.of(context).popAndPushNamed(context,"homeRoute", (route) => route == null)
                // Navigator.pushNamedAndRemoveUntil(context, "homeRoute", (route) => route == null);

          }),
      ],
    );
  }
}

