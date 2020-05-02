import 'package:flutter/material.dart';
import '../jsontest.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: 
    RaisedButton(onPressed: (){
      //Navigator.of(context).push(MaterialPageRoute(
              //   builder: (BuildContext context){
              //     return TLHome1();
              //   }
              // ));
    // Navigator.push(context, MaterialPageRoute(builder: (context) =>()));
                // Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>TLHome1()));

      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>TestOff())).then((value) {
        print("Navigator");
        print(value);
      });

    })
    ,);
  }
}