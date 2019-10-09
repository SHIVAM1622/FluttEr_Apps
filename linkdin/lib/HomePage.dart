import 'package:flutter/material.dart';
import 'home.dart';
import 'people.dart';
import 'plus.dart';
import 'notification.dart';
import 'shop.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  

  int current =0;
  Widget caller( int index){
 switch(index){

   case 0:{
     return Home();
     
   }
   break;
    case 1:{
     return people();
     
   }
   break;
    case 2:{
     return plus();
     
   }
   break;
    case 3:{
     return notification();
     
   }
   break;
    case 4:{
     return shop();
     
   }
   break;
 }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff0077b5),
        leading: Icon(Icons.perm_identity),
        
        actions: <Widget>[
         
        
          Container(
             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            height: 25,
            width: 200,
            
            child: TextField(
              
              decoration: InputDecoration(hintText: 'search',icon: Icon(Icons.search)),

            ),
             ),
             IconButton(
        onPressed: (){},
           icon:Icon(Icons.recent_actors),
             ),
              IconButton(
        onPressed: (){},
           icon:Icon(Icons.message),
             ),
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
              backgroundColor: Colors.white,
        type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blueGrey,),
            title: Text(""),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.people_outline,color: Colors.blueGrey),
            title: Text(""),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,color: Colors.blueGrey),
            title: Text(""),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none,color: Colors.blueGrey),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop,color: Colors.blueGrey),
            title: Text(""),
          ),
          



               
          ],
           ),







      
         
      
    );
  }
}