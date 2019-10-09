import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:news/fullnews.dart' as prefix0;
import 'package:flutter_swiper/flutter_swiper.dart';
  

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final String url =
      "https://newsapi.org/v2/top-headlines?q=trump&apiKey=f45a6e98713c4e3e87172963d0527e3a";
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
    return Container(
      child: Center(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200, width: double.infinity, 
              child: Image.network("https://girltalkhq.com/wp-content/uploads/2015/12/headline-formulas-800x500-e1449779882775.jpg"),
            ),
            Container(
                child: Expanded(
                                  child: Center(
                    child: isloading
                        ? CircularProgressIndicator()
                        : Swiper( 
                         
                            itemCount: 20,
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
                                          style: TextStyle(fontSize: 10),
                                          textAlign: TextAlign.justify,
                                        ),
                                        subtitle: Text(data["articles"][index]["description"]),
                                      
                                        onTap: () => _sendtonewscreen(index),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  _sendtonewscreen(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => prefix0.Fullnews(
                  data: data,
                  index: index,
                )));
  }

  //  Future<void> ShowDialog(int index) async {
  //   return showDialog<void>(
  //       context: context,
  //       barrierDismissible: true,
  //       builder: (BuildContext context) {
  //         return SimpleDialog(
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //           children: <Widget>[
  //             Container(
  //                 height: 750,
  //                 width: 500,
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.all(Radius.circular(20)),
  //                 ),
  //                 child: WebView(
  //                   initialUrl: data["sources"][index]["url"],
  //                     javascriptMode: JavascriptMode.unrestricted,

  //                 )),
  //           ],
  //         );
  //       });
  // }
}
