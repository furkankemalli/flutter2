import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ilkproje/uri/loadData.dart';
import 'dart:convert';

class Asayfasi extends StatefulWidget{
  uygulama2 createState() => uygulama2();
}


Future <LoadData> apiCall() async {
  final response = await http.get(
    'https://raw.githubusercontent.com/alimcevik/jsonapi/master/api.json');


  if(response.statusCode == 200){
    return LoadData.fromJson(json.decode(response.body));
  }
  else {
  throw Exception('bir hata ouştu!!');
  }
}
class uygulama2 extends State<Asayfasi>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: FutureBuilder<LoadData>(
       future: apiCall(),
              // ignore: missing_return
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return Container(
                    child: Center(
                      child: Text('Kullanıcı ad: ${snapshot.data.username} \n'
                       + 'E POsta: ${snapshot.data.email}',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.orange),
                      ),
                      ),
                      );
                }else {
                  return Center(child: CircularProgressIndicator());
                }      
     
              },
       ),
    );
  }

}