import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _readiGroup;
  void _handleRadioValuechangge(int value){
    setState(() {
      print(value);
      _readiGroup = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radioDome"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 32.1,),//一个全面带选择圈的cell
            RadioListTile(
              value: 0, 
              groupValue: _readiGroup ,
               onChanged: _handleRadioValuechangge,
            title: Text("选择a")
            ,
            subtitle: Text("藐视"),
            secondary: Icon(Icons.filter_1),
            selected: _readiGroup == 0,
            ),
             RadioListTile(
              value: 1,
              groupValue: _readiGroup,
              onChanged: _handleRadioValuechangge,
              title: Text('Options B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _readiGroup == 1,
            ),
          ],


        ),
      ),

    );
  }
}