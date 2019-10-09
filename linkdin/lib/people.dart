import 'dart:math';

import 'package:flutter/material.dart';

class people extends StatefulWidget {


      

  @override
  _peopleState createState() => _peopleState();
}

class _peopleState extends State<people> {

    var image = [
     AssetImage("assets/one.png"), AssetImage("assets/two.png"), AssetImage("assets/three.png"), AssetImage("assets/four.png"), AssetImage("assets/five.png")
      , AssetImage("assets/six.png")
    ];

    var name = [
           "abdul","Alankrit","robert","thavas","jay","shivam"
    ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .7,
          crossAxisCount: 2),
        itemCount: 6,
        
        itemBuilder: (BuildContext ctx, index){

                
          return Container(
             color: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              
              child: Container(
                 
                  decoration: BoxDecoration(color: Colors.grey,image:DecorationImage(image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/31OifBuVzrL._SL500_AC_SS350_.jpg"))),
                child: Column(
                  
                  children: <Widget>[
                    Container(height: 30,),
                    CircleAvatar(radius: 30 ,backgroundImage: (image[index])),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ),
                  MaterialButton(
                    color: Colors.grey,
                    onPressed: (){},
                    child: Text("FOLLOW"),

                  )

                  
                  ],
                    
                ),
                
              ),
            ) 
            );
        }
      )
    );
  }
}