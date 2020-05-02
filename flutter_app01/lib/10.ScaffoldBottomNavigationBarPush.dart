
import 'package:flutter/material.dart';


//-------------------------------------------------------传值 用的-------------------------------------------------------------------------------------------------------------------------
/*
传值 ： Navigator.pushNamed(context, 'TLdome6',arguments: "TLdome5State");

1.  final String arguments;
2. TLdome4State(arguments: this.arguments);
class
  String arguments;
  重写构造方法。

  pushNamed（路由使用，本质调用widget初始化方法） 
   pop popAndPushNamed（返回指定widget）
*/
class TLdome4 extends StatefulWidget {
  final String arguments;
  TLdome4({Key key ,this.arguments="TLDOME4"}) : super(key: key);
  @override
  _TLdome4State createState() => _TLdome4State(arguments: this.arguments);
}

class _TLdome4State extends State<TLdome4> {
  String arguments;
  _TLdome4State({this.arguments}){
    print("arguments = ${this.arguments}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
         appBar: AppBar(title:Text(this.arguments)),
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             RaisedButton(
               child: Text(this.arguments),
               onPressed: (){
                
                 Navigator.pushNamed(context, 'TLdome5',arguments:"dome4");
               },
             )

           ],
         ),
         
       );
    
  }
}
class TLdome5 extends StatefulWidget {
 final String arguments;

  TLdome5({Key key,this.arguments="TLDOME5"}) : super(key: key);
  @override
  _TLdome5State createState() => _TLdome5State(arguments: this.arguments);
}

class _TLdome5State extends State<TLdome5> {
  String arguments;
  _TLdome5State({this.arguments});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(title:Text(this.arguments)),
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             RaisedButton(
              child: Text(this.arguments),

               onPressed: (){
                 Navigator.pushNamed(context, 'TLdome6',arguments: "TLdome5State");
               },
             )

           ],
         ),
         
       );
    
  }
}

class TLdome6 extends StatefulWidget {
   final String arguments;
  TLdome6({Key key,this.arguments="TLDOME6"}) : super(key: key);
  @override
  _TLdome6State createState() => _TLdome6State(arguments: this.arguments);
}

class _TLdome6State extends State<TLdome6> {
  String arguments;
  _TLdome6State({this.arguments});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(title:Text("this.arguments")),
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             RaisedButton(
             child: Text(this.arguments),

               onPressed: (){
                 Navigator.popAndPushNamed(context, "/");
               },
             )

           ],
         ),
         
       );
  }
}




//------------------------------BottomNavigationBar push的widget--------------------------------------------------------------------------------------------------------------------------------------------------
//temppage

class TLHome1 extends StatefulWidget {
  TLHome1({Key key}) : super(key: key);

  @override
  _TLHome1State createState() => _TLHome1State();
}
class _TLHome1State extends State<TLHome1> {
  String titls= "123123123";
  // TLhome1({this.titls="home界面"});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dasdasd"),),
      body: Container(
      margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
      color: Colors.black26,
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
             child: Text(this.titls),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.red
              )
            )
            
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.red
              )
            )
            
          ),Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.red
              )
            )
            
          ),Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.red
              )
            )
            
          )
        ],

      )
      )  
    );
  }
}


//temppage
class TLDome2 extends StatelessWidget {
  const TLDome2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("wdasdasdasdasdasdasdasdasdasdas"),
          ),
           ListTile(
            title: Text("wdasdasdasdasdasdasdasdasdasdas"),
          ),
           ListTile(
            title: Text("wdasdasdasdasdasdasdasdasdasdas"),
          ),
           ListTile(
            title: Text("wdasdasdasdasdasdasdasdasdasdas"),
          ),
           ListTile(
            title: Text("wdasdasdasdasdasdasdasdasdasdas"),
          ),
           ListTile(
            title: Text("wdasdasdasdasdasdasdasdasdasdas"),
          ),
           ListTile(
            title: Text("wdasdasdasdasdasdasdasdasdasdas"),
          ),
        ],
      ),
    );
  }
}


//temppage
class TLdome3 extends StatefulWidget {
  TLdome3({Key key }) : super(key: key);

  @override
  _TLdome3State createState() => _TLdome3State();
}

class _TLdome3State extends State<TLdome3> {

   _TLdome3State();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
       child: RaisedButton(
          onPressed: (){
          },
       ),
    );
  }
}
//------------------------------BottomNavigationBar push的widget--------------------------------------------------------------------------------------------------------------------------------------------------



//------------------------------------------------------tabar定义--------------------------------------------------------------------------------------------------------------------------
//           Navigator.pushNamed(context, 'TLdome3');
class TLHomewidgets extends StatelessWidget {
  const TLHomewidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homess"),),
      body:   Container(
      width: 100,
      height: 100,
      child: RaisedButton(
         child: Text("首页"),
         onPressed: (){
           Navigator.pushNamed(context, 'TLdome3');
         },
      ),
    ),
      
    );
    
    
  
  }
}
/*
           Navigator.pushNamed(context, 'TLdome4',arguments: "ssss");
*/
class TLSetingPage extends StatelessWidget {
  const TLSetingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: RaisedButton(
         child: Text("dome2"),
         onPressed: (){
           Navigator.pushNamed(context, 'TLdome4',arguments: "ssss");
         },
      ),

     
    );
  }
}
/*
普通的push 
*/
class TLCategoryPages extends StatelessWidget {
  const TLCategoryPages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          child: RaisedButton(
            child: Text("push界面"),
            onPressed: (){
              
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (BuildContext context){
              //     return TLHome1();
              //   }
              // ));
              // typedef WidgetBuilder = Widget Function(BuildContext context);

              // Navigator.push(context, MaterialPageRoute(builder: (context) =>()));
              /*
              widget f (context )
              */
              // Navigator.push(context,MaterialPageRoute(builder: (BuildContext (context) => TLhome)));
              Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>TLHome1()));
              // (BuildContext context){
              //     return TLHome1();
              //   }
              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>TLHome1()));
              
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),

        ),
      ],
       
    );
  }
}

//BottomNavigationBar    首页
class ScaffoldWidget extends StatefulWidget {
  ScaffoldWidget({Key key}) : super(key: key);

  @override
  _ScaffoldWidgetState createState() => _ScaffoldWidgetState();
}
class _ScaffoldWidgetState extends State<ScaffoldWidget> {

  List _pageList = [
    TLHomewidgets(),
    TLSetingPage(),
    TLCategoryPages(),
  ];
  int _cuttentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:this._pageList[this._cuttentIndex],
      appBar: AppBar(title: Text("无敌搜索")),
      

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: this._cuttentIndex,

        onTap: (  int index){
          setState(() {
            this._cuttentIndex = index;

          });

        },
                iconSize: 40.0,//图标的大小
                fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text("首页")

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_made),
            title: Text("首页")

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            title: Text("首页")

          )
        ],
      ),
      
    );
    
  }
}

