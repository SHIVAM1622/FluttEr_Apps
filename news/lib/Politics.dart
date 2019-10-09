import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:webview_flutter/webview_flutter.dart';


class Politics extends StatefulWidget {
  @override
  _PoliticsState createState() => _PoliticsState();
}

class _PoliticsState extends State<Politics> {
   final String url =
      "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=f45a6e98713c4e3e87172963d0527e3a";
  var data;
  var isloading = true;
  @override
  void initState() {
    super.initState();
    this.getjsondata();
  }
   Future<String> getjsondata() async {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
         backgroundColor: Colors.purpleAccent,
         title: Text("BUSINESS"),
       ),
       body: Container(
         child: Center(
                    child: Column(

      children: <Widget>[
            Container(
              
              child: Image.network("https://www.sentinelassam.com/wp-content/uploads/2019/02/Politics.jpg"),
            ),
                     Container(
                child: Expanded(
                                  child: Center(
                    child: isloading
                        ? CircularProgressIndicator()
                        : ListView.builder(
                          shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                
                                color: Colors.white70,
                                child: Card(
                                  
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  borderOnForeground: true,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ListTile(
                                        leading:  Image.network(data["articles"][index]["urlToImage"]),
                                        title: Text(
                                          data["articles"][index]["title"],
                                          style: TextStyle(fontSize: 20),
                                          textAlign: TextAlign.justify,
                                        ),
                                        subtitle: Text(data["articles"][index]["description"]),
                                        onTap:()=>  _sendtonewscreen(index),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                  ),
                )),
      ]    ),
         ),
       ) 
    );
  }
  _sendtonewscreen(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => overnews(
                  data: data,
                  index: index,
                )));
  }
}

 class overnews extends StatelessWidget {


   final data;
   final index;
   overnews({Key key,@required this.data, this.index}):super(key:key);
  @override
  Widget build(BuildContext context) {

          
    return Scaffold(
         appBar: AppBar(
           title: Text(data["articles"][index]["author"]),
         ),
         body: Container(
             child: WebView(
             initialUrl:    data["articles"][index]["url"],
           ),
         ),
          
    );
  }
}