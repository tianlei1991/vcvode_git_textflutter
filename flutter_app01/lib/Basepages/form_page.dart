import 'package:flutter/material.dart';

class FromDemo extends StatelessWidget {
  const FromDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.orange,
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisteForm(),
              ],
            ),
          )),
    );
  }
}

class RegisteForm extends StatefulWidget {
  RegisteForm({Key key}) : super(key: key);

  @override
  _RegisteFormState createState() => _RegisteFormState();
}
////GlobalKey  是用来状态传递的。
class _RegisteFormState extends State<RegisteForm> {
  final regisformkey = GlobalKey<FormState>();

  String username, password; 
  bool aotovalidate = false;

  void submitRegisterFrom() {
    if (regisformkey.currentState.validate()) {
      regisformkey.currentState.save();
      print('username:$username');
      print('username:$password');
      // print(object)
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("祖册")));
    } else {
      setState(() {
        aotovalidate = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return '这是一个空';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return '这是一个空';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: regisformkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "情输入账号",
              helperText: "helpertext",
              
            ),
            onSaved: (values) {
              username = values;
              print("输入账号");

            
            },
            validator: validateUsername,
            autovalidate: aotovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "情输入密码",
              helperText: "helperText",
            ),
            onSaved: (values) {
              print("情输入密码");
              username = values;

            },
            validator: validatePassword,
            autovalidate: aotovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              elevation: 0.0,
              onPressed: () {
                submitRegisterFrom();
              },
              child: Text(
                "注册",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class FormDamo2 extends StatefulWidget {
  FormDamo2({Key key}) : super(key: key);

  @override
  _FormDamo2State createState() => _FormDamo2State();
}

class _FormDamo2State extends State<FormDamo2> {
  String passwd,usernam;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
         decoration: InputDecoration(
           labelText: '输入账号',
           helperText: "不能说明",
           fillColor: Colors.red
         ), 
         onChanged: (values){
            setState(() {
              usernam = values;
            });
         },
        ),
        TextFormField(
         decoration: InputDecoration(
           labelText: "输入密码",
           helperText: "炸",
           hoverColor: Colors.red,
         ), 
         onChanged: (valusr){
           passwd = valusr;

         },
         
        ),
        RaisedButton(
          onPressed: (){
            print(usernam);
            print(passwd);
          },
        )

      ],

    );
    
  }
}