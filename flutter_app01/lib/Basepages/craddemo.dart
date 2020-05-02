import 'package:flutter/material.dart';
import 'datasoucer.dart';
class CardDemo extends StatefulWidget {
  CardDemo({Key key}) : super(key: key);

  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widths = size.width;
    final height = size.height;
    return Scaffold(
     appBar: AppBar(
       title: Text("CardDemo"),
       elevation: 0,
     ), 
     body: Container(
       padding: EdgeInsets.all(16),
       child: ListView(
         children:posts.map((post) {
           return Card(
             child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200,
                 child:   Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Container(
                        height: 20,
                        width: widths/2-20,
                        color: Colors.red,
                      ),
                      ),
                      Align(
                       alignment: Alignment.topRight,
                        child:  Container(
                        height: 20,
                        width: 20,
                        color: Colors.blue,

                        )
                      ),
                     Align(
                    alignment: Alignment.bottomRight,
                     child:  Container(
                        height: 20,
                        width: 20,
                        color: Colors.green,

                        )

                     )  ,
                     Align(
                       alignment: Alignment.bottomLeft,
                       
                        child:  Container(
                        height: 20,
                        width: 20,
                        color: Colors.yellow,

                        )
                     )


                    ],


                  ), 
                )
                
                    
                  
              
                  
                  
                  ],

                
            
              
             ),
           );

         }).toList()
         
       ),

     ),
    );
  }
}

Widget Expandinglayou(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
        Row(
                     children: <Widget>[
                       Expanded(
                         child:  Container(
                          height: 20,
                          width: 30, 
                          color: Colors.black,
                         ),
                         ),
                      
                         Expanded(
                         child:  Container(
                          height: 20,
                          width: 30, 
                          color: Colors.orange,
                         ),
                         ),
                       Expanded(
                         child:  Container(
                          height: 20,
                          width: 30, 
                          color: Colors.pink,
                         ),
                         ),
                      
                     ], 
                    ), 
                    SizedBox(height: 100,),
                     Row(
                     children: <Widget>[
                       Expanded(
                         child:  Container(
                          height: 20,
                          width: 30, 
                          color: Colors.blue,
                         ),
                         ),
                      
                         Expanded(
                         child:  Container(
                          height: 20,
                          width: 30, 
                          color: Colors.cyan,
                         ),
                         ),
                       Expanded(
                         child:  Container(
                          height: 20,
                          width: 30, 
                          color: Colors.green,
                         ),
                         ),
                      
                     ], 
                    )
    ],
  ) ;

}