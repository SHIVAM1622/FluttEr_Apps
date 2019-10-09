import "package:flutter/material.dart";
import 'dart:math';
void main(List<String> args) {
    
    runApp(MyApp());


  }
  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
       var kala = Colors.lime;
       var p = [
         Colors.lime,
         Colors.orange,
         Colors.pink,
         Colors.purple,
         Colors.red,
         Colors.redAccent,
         Colors.white12,
         Colors.yellow,
         Colors.green,

       ];
     changer(){
       var s = Random().nextInt(p.length);
       setState(() {
        kala = p[s] ;
       });
     }
     
       
    @override

    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
           home: Scaffold(
             appBar: AppBar(
               title: Text(
                 "colors",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
               ),
            ),
            body: Container(
                
               

                height: double.infinity,
                width: double.infinity,
                    color:kala,

              child:
                
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                        child: Text("changer",),
                        color: Colors.amber,
                        onPressed: () => changer(),

                  )
                ],
              ),
              
              ),
              
              
            
           ),
      );
    }
  }