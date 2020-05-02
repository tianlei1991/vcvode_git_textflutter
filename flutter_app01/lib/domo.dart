import 'package:flutter/services.dart';
import 'jsontest.dart';
import 'dart:convert';

class Person {
  String name;
  int age;
  double height;

  Person({this.name, this.age, this.height});
  factory Person.fromJson1(Map<String, dynamic> json) {
    return Person(name: json['name'], age: json['age'], height: json['height']);
  }
}
// class Domo{
//  static Future <String> _loodpersonjson() async{
//        print("_loodpersonjson");
//     return await rootBundle.loadString('data/person.json');
//   }
  
//   static Future<Person> decodePerson() async{
//            print("decodePerson");

//     String personjson = await _loodpersonjson();
//     final jsommap = json.decode(personjson);
//     print(jsommap);
//      Person  p2 = Person.fromJson1(jsommap);
//                 print("endecodePerson");

//      return p2;
//   }
// }