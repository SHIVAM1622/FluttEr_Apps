import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'videos.dart';
import 'AnewPage.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {




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
    return Container(
      
      child: Center(
        child: isloading ? CircularProgressIndicator():
        ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context , index){
            return Column(

              children: <Widget>[
                   
                GestureDetector(
                  onTap: (){
                    videoplay(data[index]["VideoURL"],data[index]["Title"],data[index]["ThumbmnilURL"],data[index]["Name"]);
                  },
                  child: SizedBox(
                   
                    width: double.infinity,
                    child: Image.network(data[index]["ThumbmnilURL"]),
                  ),
                ),
                ListTile(

                  leading: GestureDetector(
                    onTap: (){
                      
                      profile(data[index]["ProfileiconURL"],data[index]["Name"]);
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(data[index]["ProfileiconURL"],)
                      
                    ),
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
    );
  }
  videoplay (String vurl,String title, String imageurl,String name){
    Navigator.push(context, 
    MaterialPageRoute(builder:( context)=>
    videos(url: vurl,
             title:title,
             imageurl:imageurl,
             name:name
    )
    ));
  }

  profile(String kurl,name){
     Navigator.push(context, 
    MaterialPageRoute(builder:( context)=>
     AnewPage(title: kurl,
              name:name,
             
     )
    ));
  }
}