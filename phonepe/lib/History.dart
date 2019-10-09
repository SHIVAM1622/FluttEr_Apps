import 'package:flutter/material.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}
var p = ["34", "45", "462", "652", "56", "63", "5443", "08989", "870","0"];
var  names = ["jay", "raushan jha", "thavas", "dharam bhaiya", "sanajay", "raja", "rohit", "vivek", "mahesh", "rakesh"];
class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return 

       Container(
        child:ListView.builder(
             itemCount: 10,
             itemBuilder: (BuildContext ctx, index){
            
              return Padding(
               padding: const EdgeInsets.all(5),
               child:  Container(
              height: 110,
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(10), color: Colors.white),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: <Widget>[
                  ListTile(
                    trailing: Column(children: <Widget>[
                      Text("₹"+p[index], style: TextStyle(fontSize: 16)),
                      
                    ],),
                    subtitle: Text(names[index]),
                    leading: CircleAvatar(radius: 20,backgroundImage: AssetImage("assets/images/uparrow.jpg"),),
                    title: Text("Paid To",style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                
                  
                ],
              ),
            ),
                    
               
              );

             },
        ),
      );
      
  
  }
}