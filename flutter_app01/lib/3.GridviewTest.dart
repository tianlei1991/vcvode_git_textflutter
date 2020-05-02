
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
GridView  cell 可以是一个集合，集合里面装Column 的集合就是一个cell

crossAxisSpacing:水平 间距
main 垂直
corss Count 一行的个数
map((参数){

});


*/
class  LayoutDomes extends StatelessWidget{

// Widget test (){
//   return Container(
//     child:Column(children: <Widget>[
      
//     ],),
//   );
// }
List <Widget> _datasoucer(){
  var templist = listData.map((value){
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(value['imageUrl']),
          SizedBox(height: 30,), //布局使用的，使图片跟text的间距为30 
          Text(
            value["title"],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
          )
        ],
      ),
      //边框
    decoration: BoxDecoration(
      border: Border.all(
        // color: Color.fromRGBO(233, 233, 233, 0.9),
        color: Colors.red,
        width: 1


      )
    ),
    );

  });

  return templist.toList();
}


  List<Widget>_getListDatas() {
    List<Widget> list = List();
    for (var i = 0; i < 20; i++) {
      list.add(
        Container(
          alignment: Alignment.center,         
          child:Text(
            "着是第$i条数据",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,//一行的widget数量
      crossAxisSpacing: 20.0,//水平子 widget 之间的间距  -------
      mainAxisSpacing: 20.0,//垂直的间距||||||||
      padding: EdgeInsets.all(10), //子控件内边距
      childAspectRatio: 0.8,//宽度和高度的比例 默认就是1 的
      children: this._datasoucer(),
    );
  }



Widget getdatas(context,index){

     return Container(
       child: Column(

         children: <Widget>[
           Image.network(listData[index]['imageUrl']),
           SizedBox(height: 12),
           Text(
             listData[index]['title'],
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize:20
            )

           )
         ],
       ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(233, 233, 233, 0.9),
          width: 1
        )   
      ),
     );

}


  Widget buildmath(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0

      ),
      itemCount: listData.length,
      itemBuilder: this.getdatas,
    );
      

  }
  
}
