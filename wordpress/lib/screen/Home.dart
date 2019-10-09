import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'News.dart';
import 'package:flutter_html/flutter_html.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

    final String url = "https://www.simplifiedcoding.net/wp-json/wp/v2/posts";
  var data;
   bool isloading = true;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getjasondata();
  }


   Future getjasondata() async
   {
      var response= await http.get(Uri.encodeFull(url));
      setState(() {

        var convertdatajson = json.decode(response.body);
        data= convertdatajson;
        isloading = false;
      });
   }
    

  @override




  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            padding: EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        
        child: Center(
          
          child: isloading ? CircularProgressIndicator():
          ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext ctx , index){
            
           return
               GestureDetector(
                onTap: ()=>newsceen(data[index]["title"]["rendered"],data[index]["excerpt"]["rendered"],data[index]["jetpack_featured_media_url"]),
                    
                              child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
                children: <Widget>[
                  Image.network(data[index]["jetpack_featured_media_url"]),
                  Text(data[index]["title"]["rendered"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Html(data:data[index]["excerpt"]["rendered"])
                
                ],
            ),
          ),
              );
            },
          ),
          
        ),
      ),
    );
  } 
   newsceen(String title,String disc,String image){
              Navigator.push(context, MaterialPageRoute(
             
              builder: (context) => News(
                title:title,
                disc:disc,
                image:image
              )
              ));
  }
}