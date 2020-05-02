import 'package:flutter/material.dart';
/*
TextField 登录，  多行文本
单选 ，多选框效果 Checkbox


*/
class TextflidDemo extends StatefulWidget {
  TextflidDemo({Key key}) : super(key: key);

  @override
  _TextflidDemoState createState() => _TextflidDemoState();
}

class _TextflidDemoState extends State<TextflidDemo> {
  // var _username = new TextEditingController();  //这个暂时不知道有什么作用
  var _username;
  var _password;
  @override
  void initState(){
    super.initState();
    // _username.text = '初始值'; //初始化控制器
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("表单")
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration:InputDecoration(
                hintText: "情输出用户名",

              ),
              // controller: _username,
              onChanged: (values){
                  setState(() {
                    _username = values;
                  });
              },
            ),
            TextField(
              obscureText:true,//设置密码
              decoration:InputDecoration(
                  hintText: "密码"
              ),
              onChanged: (valus){
                setState(() {
                  this._password = valus;
                });
              },
            ),
            SizedBox(height: 40),
            Container(
              width:double.infinity, //自动使用大小
              height:40,
              child:RaisedButton(
                child:Text("登录"),
                onPressed:(){
                  print(this._username);
                  print(this._password);

                },
                color:Colors.blue,
                textColor: Colors.white,
              )
            ) 
          ],
        ),
      
      ),

    );
  }

  Widget basefild (){
    return Container(
      child:Column(children: <Widget>[
        TextField(),
        SizedBox(height: 20),
        TextField(decoration: InputDecoration(
          hintText: "情输入搜索内容",
          border: OutlineInputBorder(),
        ),)
      ],)
    );
  }
}
class CheckBoxDemo extends StatefulWidget {

  CheckBoxDemo({Key key}) : super(key: key);
    _CheckBoxDemoState createState() => _CheckBoxDemoState();
}
class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("单选按钮")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

            Row(
            children:<Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                    this.flag = v;
                  });

                },
                activeColor: Colors.red, //选中颜色
              ),
            ]
          ),
            Row( //查看选中
               children: <Widget>[
                Text(this.flag?"选中":"未选中")
              ],
            ),
            SizedBox(height: 40),
            Divider(),//画一个线
            CheckboxListTile(
              value: this.flag, 
              onChanged: (v){
                setState(() {
                  this.flag = v;
                });
              },
              title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary: Icon(Icons.help),
              selected: this.flag,
             
              )
      ],),
    );
  }

}
  

class FormDemopage extends StatefulWidget {
  FormDemopage({Key key}) : super(key: key);

  @override
  _FormDemopageState createState() => _FormDemopageState();
}

class _FormDemopageState extends State<FormDemopage> {
  String username;
  int sex = 1 ;   
  String info = '';//描述信息

  List hobby = [
    {
      "checked":true ,
      'tetle':'吃饭',
    },
    {
      "checked":false  ,
      'tetle':'睡觉',
    },
    {
      "checked":true ,
      'tetle':'写代码',
    },
  ];
//返回row  Checkbox 
  List <Widget> _getHobby(){
    List<Widget> templist = [];
    for (var i = 0; i < this.hobby.length; i++) {
      templist.add(
        Row(
          children:<Widget>[
            Text(this.hobby[i]["tetle"]),
            Checkbox(
              value: this.hobby[i]["checked"], 
              onChanged: (v){
                setState(() {
                  this.hobby[i]["checked"] = v;
                });
              }
              )
          ]
        )

      );
    }
  return templist;
  }
  void  _sexChangge(valus){
    setState(() {
      this.sex = valus;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("学员登记信息系统")),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "请输入用户信息"
            ),
            onChanged: (v){
              setState(() {
                this.username = v;
              });
            },
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Text("男"),
              Radio(
                value: 1,
                onChanged: this._sexChangge,
                groupValue: this.sex,

              ),
              SizedBox(width: 20),
              Text("女"),
              Radio(
                value: 2, 
                groupValue:this.sex , 
                onChanged: this._sexChangge
                ),
            ],
          ),
         SizedBox(height: 40),
         //爱好。
          Column(
                  children: this._getHobby(),
                ),
         TextField(
                  maxLines:4, //多行文本， 
                 decoration: InputDecoration( //边框
                 hintText: "描述信息", //提示语
                 border: OutlineInputBorder() //边框种类
               ),
                onChanged: (v){
                    setState(() {
                      this.info = v;
                    });
                },
                ) ,
                SizedBox(height: 40),
        Container(
          width:double.infinity,
          height: 40,
          child: RaisedButton(
            child: Text("提交数据"),
            onPressed: (){
              print(this.sex);
              print(this.username);
              print(this.hobby);
            },
            color: Colors.blue,
            textColor: Colors.white,
          ),
          
        )
        ],
      ),
      ),
      
    );
  }
}