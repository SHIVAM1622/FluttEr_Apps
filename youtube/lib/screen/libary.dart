import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class libary extends StatefulWidget {
  @override
  _libaryState createState() => _libaryState();
}

class _libaryState extends State<libary> {
  final String url = "http://userapi.tk/youtube/";
  var data;
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    this.getjasondata();
  }

  Future getjasondata() async {
    var response = await http.get(Uri.encodeFull(url));
    setState(() {
      var convertdatajson = json.decode(response.body);
      data = convertdatajson;

      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
            Container( alignment: Alignment.topLeft,
                    child: Text("Recent",style: TextStyle(fontSize: 15),)),
                 Container(
                      height: 5,
                 ),
          Container(
            height: 150,
            width: 800,
            child: Center(
              child: isloading
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (BuildContext ctx, index) => Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Container(
                              height: 80,
                              width: 150,
                              child: Card(
                                elevation: 0,
                                color: Colors.grey,
                                child: Image(
                                  image:
                                      NetworkImage(data[index]["ThumbmnilURL"]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: .3,
                              width: 142.3,
                              child: Divider(
                                thickness: 4,
                                color: Colors.red,
                                endIndent: 50,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                               Column(
                                 children: <Widget>[
                                  
                                  Text(
                                 data[index]["Title"],
                                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                  ),
                                    Text(
                                  data[index]["Name"],
                                  style: TextStyle(fontSize: 15),
                                ),
                                 ],
                               ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
          Divider(
            height: 3,
            color: Colors.black38,
          ),
            
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.history),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("History"),
                    )
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.file_download),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Downlosds"),
                    )
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.movie_filter),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("My videos"),
                    )
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.select_all),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Purchases"),
                    )
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.watch_later),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Watch later"),
                    )
                  ],
                ),
                 
                Divider(
                  height: 10,
                  color: Colors.black38,
                ),
                  Container( alignment: Alignment.topLeft,
                    child: Text("PLaylist_Recently Added")),
                 Container(
                      height: 20,
                 ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Like"),
                          )
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://www.nydailynews.com/resizer/MKdfE2AF6OqbmJ03ADrn0h9MtIk=/800x600/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/RSPDBZPSGHGN75RDYJUPB3PYIQ.jpg")),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Robert Downey jr"),
                          ),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              height: 60,
                              width: 40,
                              child: Image.network(
                                  "https://media2.giphy.com/media/l1IY0qFRdNu9fv4FG/giphy.gif")),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("SAktiman E24"),
                          ),
                        ],
                      ),
                       Container(
                        height: 10,
                      ),
                       Row(
                        children: <Widget>[
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://cdn.wccftech.com/wp-content/uploads/2019/08/WCCFthelastofuspart23.jpg")),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Last of us "),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
