import 'package:flutter/material.dart';
List listData=[
      {
          "title": 'Candy Shop',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/1.png',
      },
       {
          "title": 'Childhood in a picture',
          "author": 'Google',
          "imageUrl": 'https://www.itying.com/images/flutter/2.png',
      },
      {
          "title": 'Alibaba Shop',
          "author": 'Alibaba',
          "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      },
      {
          "title": 'Candy Shop',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/4.png',
      },
       {
          "title": 'Tornado',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/5.png',
      },
      {
          "title": 'Undo',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/6.png',
      },
      {
          "title": 'white-dragon',
          "author": 'Mohamed Chahin',
          "imageUrl": 'https://www.itying.com/images/flutter/7.png',
      }      

  ];
/*
tableview7
listview.childen属性 是需要一个widget数组的

*/
class tableview7 extends StatelessWidget { 


  List<Widget> _getData(){
    List<Widget> listdata = List();
    for (var i = 0; i < 20; i++) {
      ListTile t = ListTile(
        title: Text("我是第$i列表"),
      );
      listdata.add(t);
    }
    return listdata;
      
  }
    @override
  Widget build(BuildContext context) {
    return ListView(children:this._getData());
  }

 }
/*
tableview6
listview.childen属性 是需要一个widget数组的
*/
class tableview6 extends StatelessWidget {  

 List <Widget> _getdata(){
    return [ListTile(
      title: Text("我是一个列表"),
      leading: Text("我是一个leading"),
      subtitle: Text("我是一个subtitle"),
    )];
 }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children:this._getdata());
  }

}



/*
tableview5
listview.bilud 使用动态加载数据，
listview.bilud(
 itemCount: listData.length, 数据源的个数
  itemBuilder: this._getListData, 回调的方法。 会给你一个index 和content 
)
 

*/
class tableview5 extends StatelessWidget {

  Widget _getListData(context,index){
    return ListTile(
      title: Text(listData[index]["title"]),
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
  
}

/*
tableview4：padding设置内空间cell的间距。
cell 他可以添加任何类型只要是widget 他会按照顺序来排版
面下则是往他头尾添加了一个image的widget 。
*/
class TableviewWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return ListView(
      padding:EdgeInsets.all(10),
      children: <Widget>[
        Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360112&di=255b3ca12012b348df16c79dc2e8475b&imgtype=0&src=http%3A%2F%2Ffile01.16sucai.com%2Fd%2Ffile%2F2013%2F0617%2F20130617104626550.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第一个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
       Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360112&di=255b3ca12012b348df16c79dc2e8475b&imgtype=0&src=http%3A%2F%2Ffile01.16sucai.com%2Fd%2Ffile%2F2013%2F0617%2F20130617104626550.jpg"),

        Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=dbb50aa103a228369758d5680d1a4a86&imgtype=0&src=http%3A%2F%2Fc.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Ff3d3572c11dfa9ecc8a8866860d0f703908fc1cf.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第二个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
        Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=ffbc3145d10ef68f0ac260717d82f807&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F02%2F11%2F73%2F0757699868621ee.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第三个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
         Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=d2c6d4c1128e543bcac0e153a3394919&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150519%2F0005018372430285_b.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第四个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
         Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=d2c6d4c1128e543bcac0e153a3394919&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150519%2F0005018372430285_b.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第五个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
 Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=d2c6d4c1128e543bcac0e153a3394919&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150519%2F0005018372430285_b.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第六个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),

 Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=d2c6d4c1128e543bcac0e153a3394919&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150519%2F0005018372430285_b.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第⑦个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
         Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=d2c6d4c1128e543bcac0e153a3394919&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150519%2F0005018372430285_b.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第⑧个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),

 Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=d2c6d4c1128e543bcac0e153a3394919&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150519%2F0005018372430285_b.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第九个个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
          Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807776149&di=d2c6d4c1128e543bcac0e153a3394919&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150519%2F0005018372430285_b.jpg"),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            "我是第10个标题",
            textAlign: TextAlign.center, 
            style: TextStyle(
                  fontSize: 28,
                ),        
          ),
      
        ),
      ],

    );
  }
}
/*
tableview3
cell listtile  
leading:头像。
title 标题
subtitle副标题
*/
class TableviewWidget3 extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
            
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),
         ListTile(
              leading:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584807360117&di=5d9abadd768f7f25575000e9bc7a6878&imgtype=0&src=http%3A%2F%2Fbbs.jooyoo.net%2Fattachment%2FMon_0905%2F24_65548_2835f8eaa933ff6.jpg"),
              title: Text("华北黄淮高温雨今起强势登场"),
              subtitle: Text("but all I gotta view is your mail,"),
        ),

      ],

    );
  }
}
/*
tableview2

*/
class TableviewWidget2 extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading:Icon(Icons.settings,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
        ListTile(
          leading:Icon(Icons.home,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
         ListTile(
          leading:Icon(Icons.pages,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
         ListTile(
          leading:Icon(Icons.settings,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
         ListTile(
          leading:Icon(Icons.home,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
         ListTile(
          leading:Icon(Icons.home,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
         ListTile(
          leading:Icon(Icons.home,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
         ListTile(
          leading:Icon(Icons.home,size: 40),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("Not not not nothing on you babe"),
        ),
      ],
    );
    
  }

}


/*
tableview1
Listtile: 就相当于cell
title 标题
subtitle 副标题
*/
class TableviewWidget1 extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text(
            "华北黄淮高温持续 南方强降雨今起强势登场",
           style: TextStyle(
             fontSize: 20
             ),
          ),
          subtitle: Text(
            "I hope I get the chance to travel the world",
            style: TextStyle(
              fontSize: 20
              ),
          ),
        ),
        ListTile(
          title: Text(
            "中国13家运营波音737MAX航空公司均已提出索赔场",
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            "You were staying out all night",
            style: TextStyle(
              fontSize: 20
              ),
          ),
        ),
         ListTile(
          title: Text(
            "华中国13家运营波音737MAX航空公司均已提出索赔登场",
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            "You were staying out all night",
            style: TextStyle(
              fontSize: 20
              ),
          ),
        ),
         ListTile(
          title: Text(
            "华北黄淮高温持续 势登场",
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            "You were staying out all night",
            style: TextStyle(
              fontSize: 20
              ),
          ),
        ),
         ListTile(
          title: Text(
            "中国天气网讯 21日开始，",
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            "You were staying out all night",
            style: TextStyle(
              fontSize: 20
              ),
          ),
        ),
      ],
    );
  }

}

/*
tableview
Listview:
scrollDirection：滚动方向  horizontal横向
child：sub widget子装饰
Container widget一个容器，
*/
class TableviewWidget extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                Text("我是一个文本")
              ],

            ),
          ),
          Container(
            width: 180,
            color: Colors.deepOrange,

          ),
          Container(
            width: 180.0,
            color: Colors.deepPurpleAccent,
            
          )
        ],
      ),
    );
  }

}

/*
text widget 
textAlign 显示位置
fontSize 字体大小
color 字体颜色
*/
class mytext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "this 一个 text",
        textAlign:TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          textBaseline: TextBaseline.alphabetic,
          color: Color.fromARGB(1, 120, 222, 122),
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
  
}