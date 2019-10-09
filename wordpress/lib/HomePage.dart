import 'package:flutter/material.dart';

import 'screen/Home.dart';
import 'screen/about.dart';
import 'screen/category.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  
     int current =0;
    var page = [
      Home(),
      
      category(),
      about(),
    ];

     ontapped(index){
        setState(() {

         current=index ;
        });
    }
       

     

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wordpress"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body: page[current],
         bottomNavigationBar: BottomNavigationBar(

             currentIndex: current,
             onTap: ontapped,
            
             
          items:<BottomNavigationBarItem> [
            BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text(""),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("")
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text(""),
          ),
          
          
        
          



               
          ],
           ),

    );

      
  }
}