import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class tranding extends StatefulWidget {
  @override
  _trandingState createState() => _trandingState();
}

class _trandingState extends State<tranding> {


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








  var icons = [
    AssetImage("assets/images.png"),
    AssetImage("assets/gdv.png"),
    AssetImage("assets/news.png"),
    AssetImage("assets/film.png"),
    AssetImage("assets/f.png"),
  ];

    var names = [
      'MUSIC',
      'GAMES',
      'NEWS',
      'MOVIES',
      'FASHION',
    ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext ctx, index) => Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 8, 8),
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor:Colors.black54,
                          backgroundImage: icons[index],
                        )
                        ),
                         Text(names[index]),
                      
                  ], 
                ),
              )
            ),

             SizedBox(
               height: 400,
          child: isloading ? Center(child: CircularProgressIndicator()):
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context , index){
              return Column(

                children: <Widget>[
                     
                  SizedBox(
                     height:250,
                    width:double.infinity,
                    child: Image(image: NetworkImage(data[index]["ThumbmnilURL"]), fit: BoxFit.fill,),
                  ),
                  ListTile(
   
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(data[index]["ProfileiconURL"],)
                      
                    ),
                    title: Text(data[index]["Title"],style: TextStyle(fontSize: 20),),

                    subtitle: Text(data[index]["Name"]+"."+data[index]["Views"]+"views"+data[index]["Day"]),
                   trailing: Icon(Icons.more_vert),
                  )

                ],
              );
            },
          ),
         ) ,
      
          ],
        ),
      ),
    );
  }
}
