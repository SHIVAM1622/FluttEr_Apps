import 'package:flutter/material.dart';

class inbox extends StatefulWidget {
  @override
  _inboxState createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
               child: ListView.builder(
                 itemCount: 5,
                 itemBuilder: (BuildContext ctx,index)=>Column(
                  
 
                    children: <Widget>[
                        ListTile(
                         
                          leading : CircleAvatar(child: Image.network("https://www.biography.com/.image/t_share/MTE4MDAzNDEwNzMzODYwMzY2/robert-downey-jr-9542052-1-402.jpg")),
                           title: Text(" Learn state management"),
                           subtitle: Text("5 min ago"),
                           trailing: Image.network("https://ecowarriorprincess.net/wp-content/uploads/2019/06/Robert-Downey-Jr.-Announces-Footprint-Coalition-to-Fight-Climate-Change.jpg"),
                      )
                    ],
                 )
              
               ),
          );
  }
}