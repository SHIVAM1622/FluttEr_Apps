import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'category.dart';
import 'about.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    
    searching(){

      TextField( decoration: InputDecoration(hintText: " Search"),);
    }

      int current =0;
  Widget caller( int index){
 switch(index){

   case 0:{
     return home();
     
   }
   break;
    case 1:{
     return category();
     
   }
   break;
    case 2:{
     return about();
     
   }
    
  
    
   break;
 }
 return widget;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text("NEWS"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: ()=>searching() ,
            )
          ],
        ),

       

        body: caller(current),
           
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: current,
             onTap: (value){
              
               setState(() {
                  current = value;
               });
               
             },
        backgroundColor: Colors.lime,
        type: BottomNavigationBarType.shifting,
        items: [
         
        
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueGrey),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category, color: Colors.blueGrey),
            title: Text("category"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blueGrey),
            title: Text("about"),
          ),
        ],
      ),
    );
  }
}
