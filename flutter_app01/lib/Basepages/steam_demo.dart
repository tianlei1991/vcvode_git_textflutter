import 'dart:async';

import 'package:flutter/material.dart';
class StreamDemo extends StatelessWidget {
  const StreamDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("strademo"),
      ),
      body: StreamDemoHome(),
    );
  }
}
class StreamDemoHome extends StatefulWidget {
  StreamDemoHome({Key key}) : super(key: key);

  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamdemoSubscription;
  StreamController<String> _streadmeo;
  StreamSink _sinkDemo;
  String _data ='....';
  @override
  void dispose() {
    // TODO: implement dispose
    _sinkDemo.close();//关闭StreamSink
    super.dispose();

  }

  @override
  void initState() {
    print("创建 a strem");
    _streadmeo = StreamController.broadcast();
     _sinkDemo = _streadmeo.sink;

    print("开始监听 stream ");
 _streamdemoSubscription =
        _streadmeo.stream.listen(onData, onError: onError, onDone: onDone);
    
    _streadmeo.stream.listen(onDataTwo, onError: onError, onDone: onDone);    // TODO: implement initState
    super.initState();
  }
  void onDone() {
    print('Done!');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });

    print('$data');
  }

  void onDataTwo(String data) {
    //onDataTwo: 
    print('onDataTwo: $data');
  }


  void _pauseStream() {
    print('暂停 subscription');
    _streamdemoSubscription.pause();
  }

  void _resumeStream() {
    print('（中断后）重新开始 subscription');
    _streamdemoSubscription.resume();
  }

  void _cancelStream() {
    print('取消 subscription');
    _streamdemoSubscription.cancel();
  }

  void _addDataToStream() async {
    print('添加 data to stream.');

    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }
 Future<String> fetchData() async{
   await Future.delayed(Duration(seconds: 5));
   return "wudo";
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StreamBuilder(builder: (context ,snapshot){
            return Text("{$snapshot}");

          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: _addDataToStream, child: Text("添加")),
              FlatButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('Resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: _cancelStream,
                ),
            ],
          )
        ],

      ),
    );
  }
}