import 'package:flutter/material.dart';

import 'asayfasi.dart';
class NavigasyonIslemleri extends StatefulWidget{
  uygulama createState() => uygulama();
}
// ignore: camel_case_types
class uygulama extends State<NavigasyonIslemleri>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("ŞİFRELEME",
        style: TextStyle(color: Colors.white),),
      ),

      body: Container(margin: EdgeInsets.symmetric(horizontal:50),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          RaisedButton(child: Text("GÜÇLÜ ŞİFRE"),
          elevation: 12,
          textColor: Colors.yellow,
          color: Colors.blue,
          onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder:
            (context) => Asayfasi()),);
          },),
          
          RaisedButton(child: Text("ORTA ŞİFRE"),
          elevation: 12,
          textColor: Colors.yellow,
          color: Colors.blue,
          onPressed: (){},),
          RaisedButton(child: Text("ZAYIF ŞİFRE"),
          elevation: 12,
          textColor: Colors.yellow,
          color: Colors.blue,
          onPressed: (){},),
        ],
      ),
    ),
    );
  }
} 