import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'balance.dart';
import 'store.dart';
import 'apps.dart';
import 'history.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  

    int current =0;
   Widget pageCaller(int  index){

      switch(index){
        case 0:{

          return HomePage();
        }
        break;
        case 1:{
        return store();
        }
        break;
        case 2:{
           return apps();
        }
        break;
        case 3:{
          return balance();
        }
        break;
        case 4:{
          return history();
        }
      }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

           appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.people),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.not_listed_location,
                  size: 30,
                ),
                Icon(
                  Icons.notifications,
                  size: 30,
                ),
                Icon(
                  Icons.gradient,
                  size: 30,
                )
              ],
            ),
          ),
        ],
        title: Text(
          "your location \n jaipur > ",
          style: TextStyle(fontSize: 13),
        ),
      ), 

    body:pageCaller(current),

    


        bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (value){
            setState(() {
                  current = value;
               });
        },
        backgroundColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("store"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text("APPS"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text("BALANCE"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("history"),
          ),
        ],
      ),
    );
  }
}