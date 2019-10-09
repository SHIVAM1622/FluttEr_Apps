import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:async';
import 'dart:convert';

class weather extends StatefulWidget {
  
   
  final String dropdownValue;
    weather({
            Key key,@required this.dropdownValue
   }) : super(key:key);

  @override
  _weatherState createState() => _weatherState(dropdownValue: dropdownValue);
}

class _weatherState extends State<weather> {
  
   
    
  
var data;
  var isloading = true;
  @override
  void initState() {
    super.initState();
    this.getjsondata();
  }
  Future<String> getjsondata() async {
     final String url = "https://openweathermap.org/data/2.5/weather?q=$dropdownValue&appid=b6907d289e10d714a6e88b30761fae22";
    var response = await http.get(
      Uri.encodeFull(url),
    );
    print(response.body);
    setState(() {
      var convertDatatojason = json.decode(response.body);
      data = convertDatatojason;
      isloading = false;
    });
  }
        String dropdownValue;
     _weatherState({Key key,@required this.dropdownValue});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("weather app"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.access_time),
              onPressed: ()=>getjsondata,
            )

          ],
        ),
        body: Container(
          color: Colors.lime,
          width: double.infinity,
          height: double.infinity,
          child: 
          Center(
                      child: isloading ? CircularProgressIndicator():
                      
                       Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: <Widget>[
                  Image.network("https://d279m997dpfwgl.cloudfront.net/wp/2017/12/weather_album-art-1000x1000.jpg"),
                  Text("temp :${data["main"]["temp"]}",style: TextStyle(fontSize: 30),),
                   Text("pressure :${data["main"]["pressure"]}",style: TextStyle(fontSize: 30,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                    Text("humidity :${data["main"]["humidity"]}",style: TextStyle(fontSize: 30,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                      Text("temp_min :${data["main"]["temp_min"]}",style: TextStyle(fontSize: 30,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                    Text("temp_max :${data["main"]["temp_max"]}",style: TextStyle(fontSize: 30,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
 
                    Text(dropdownValue)
                ],
              ) ,
            ),
          ),
        ),
    ); 
  }
}