
import 'package:flutter/material.dart';
import 'package:navlogin/category.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
         title: Text("navigator"),
       ),
       drawer: Drawer(
         
         child: ListView(
           children: <Widget>[
             UserAccountsDrawerHeader(
                accountName: Text("shivam tripathi"),
                accountEmail: Text("shivamtripathi5836@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text("AIM"),
                ),
             ),
              ListTile(
               title: Text("home"),
               trailing: Icon(Icons.add_a_photo),
               leading: Icon(Icons.add_box),
             ),
             ListTile(
               title: Text("category"),
               trailing: Icon(Icons.add_a_photo),
               leading: Icon(Icons.add_box),
              
             ),
              ListTile(
               title: Text("Log-in"),
               trailing: Icon(Icons.accessibility),
               leading: Icon(Icons.account_circle),
                onTap:()=>Navigator.of(context).pushNamed("/login") ,
             ),
             ListTile(
               title: Text("Sign-Up"),
               trailing: Icon(Icons.accessibility),
               leading: Icon(Icons.account_circle),
                 onTap:()=>Navigator.of(context).pushNamed("/signup") ,
             ),
              ListTile(
               title: Text("contact"),
               trailing: Icon(Icons.accessibility),
               leading: Icon(Icons.account_circle),
             ),
             Divider(

             ),
             ListTile(
               title: Text("close"),
               trailing: Icon(Icons.accessibility),
               leading: Icon(Icons.account_circle),
               onTap: ()=> Navigator.of(context).pop(),
             ),
           ],
         ),
       ),
       body: Container(
         color: Colors.black,
         height: double.infinity,
         width: double.infinity,
         child: Column(
           children: <Widget>[
             Text("homePage")
           ],
         ),
       ),
    );
  }
}