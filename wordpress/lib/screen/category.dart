import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'categoryitem.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  final String url = "http://simplifiedcoding.net/wp-json/wp/v2/Categories";
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
    return Scaffold(
      body: Container(
              child: Center(
            child: isloading
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Card(
                        child: ListTile(
                          onTap: ()=>
                            categorylist(data[index]['id'],data[index]['name']),
                        
                            
                          
                          trailing: Text(data[index]["count"].toString()),
                          title: Text(data[index]["name"]),
                          subtitle: Visibility(
                            visible: false,
                            child: Text(data[index]["id"].toString())
                            
                            ),
                        ),
                      );
                    })),
      ),
    );
  }

  categorylist(int id,String name){
              Navigator.push(context, MaterialPageRoute(
             
              builder: (context) => Categoryitems(
                id: id,
                name:name,
              )
              ));
  }
}
