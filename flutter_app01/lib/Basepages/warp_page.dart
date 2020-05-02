import 'package:flutter/material.dart';

class Warpdemo extends StatefulWidget {
  Warpdemo({Key key}) : super(key: key);

  @override
  _WarpdemoState createState() => _WarpdemoState();
}

class _WarpdemoState extends State<Warpdemo> {
  //小圆点，主要控制 数据源
  List chiplist = ["起风了", "浮夸", "未来的自己"];
  List flitterChips = [
    "jock",
    "loss",
    "ray",
    "kill",
  ];
  List<String> _selected = [];
  String _choice = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(label: Text("Life")),
                Chip(label: Text("Life")),
                Chip(label: Text("Life")),
                Chip(label: Text("Life")),
                Chip(label: Text("Life")),
                Chip(
                  label: Text("wanhh"),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                )
                // ChipThemeData(backgroundColor: null, disabledColor: null, selectedColor: null, secondarySelectedColor: null, labelPadding: null, padding: null, shape: null, labelStyle: null, secondaryLabelStyle: null, brightness: null)
              ],
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              alignment: Alignment.center,
              child:Wrap(
                children: <Widget>[
                     Chip(label: Text("wudi")),
                     Chip(label: Text("wudi")),
                     Chip(label: Text("wudi")),
                     Chip(label: Text("wudi")),
                     Chip(label: Text("wudi")),
                     Chip(label: Text("wudi")),
                     Chip(label: Text("wudi")),

                ],
              ),
            ),
            Wrap(
              children: chiplist.map((value) {
                return ActionChip(
                    label: Text(value),
                    onPressed: () {
                      setState(() {
                        chiplist.remove(value);
                      });
                    });
              }).toList(),
            ),
            Divider(
              color: Colors.green,
              height: 32.0,
            ),
            Wrap(
              spacing: 8.0,
              children: flitterChips.map((tag) {
                return FilterChip(
                    //点击后有一个选择的
                    label: Text(tag),
                    selected: _selected.contains(tag),
                    onSelected: (value) {
                      setState(() {
                        if (_selected.contains(tag)) {
                          _selected.remove(tag);
                        } else {
                          _selected.add(tag);
                        }
                      });
                    });
              }).toList(),
            ),
            Wrap(
              spacing: 8.0,
              children: chiplist.map((tag) {
                return ChoiceChip(
                  label: Text(tag),
                  selected: _choice == tag,
                  onSelected: (v) {
                    setState(() {
                      _choice = tag;
                    });
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.receipt),
          onPressed: () {//控制数据源
            setState(() {
               // _choice = ""
            
            chiplist = [
              'Apple',
              'Banana',
              'Lemon',
            ];
            });
           
          }),
    );
  }
}
