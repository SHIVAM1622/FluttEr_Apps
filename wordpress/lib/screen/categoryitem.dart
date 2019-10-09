import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'News.dart';
import 'package:flutter_html/flutter_html.dart';

class Categoryitems extends StatefulWidget {
  final int id;
  final String name;
  Categoryitems({Key key, @required this.id, this.name}) : super(key: key);
  @override
  _CategoryitemsState createState() => _CategoryitemsState(
    id: id, name: name);
}

class _CategoryitemsState extends State<Categoryitems> {
  int id;
  String name;
  _CategoryitemsState({Key key, @required this.id, this.name});

  var data;
  bool isloading = true;
  //String url;
  @override
  initState() {
    
    super.initState();
    this.getjasondata();
  }
  Future <String>getjasondata() async {
  String url =
        "https://www.simplifiedcoding.net/wp-json/wp/v2/posts?categories=$id";

    var response = await http.get(Uri.encodeFull(url));
    setState(() {
      var convertdatajson = json.decode(response.body);
      data = convertdatajson;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: isloading
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () => newsceen(
                          data[index]["title"]["rendered"],
                          data[index]["content"]["rendered"],
                          data[index]["jetpack_featured_media_url"]),
                      child: SingleChildScrollView(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              Image.network(
                                  data[index]["jetpack_featured_media_url"]),
                              Text(
                                data[index]["title"]["rendered"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Html(data: data[index]["excerpt"]["rendered"])
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }

  newsceen(String title, String disc, String image) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                News(title: title, disc: disc, image: image)));
  }
}
