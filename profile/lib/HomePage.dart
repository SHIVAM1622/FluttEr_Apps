import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              
              children: <Widget>[
                ClipPath(
                  
                  clipper: Myclipper(),
                  child: Container(
                    height: 340,
                    color: Colors.red,
                  ),
                ),
                 Padding(
                    padding: EdgeInsets.only(top:140),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipOval(
                          
                          child: Container(
                            height: 100,
                            width: 100,
                           child: Image.asset("assets/six.jpg"),
                           color: Colors.white,
                          ),
                        )
                      ],
                    )
                    
                 ),
              ],
            ),
          ),
          Container(
              child: Column(
            children: <Widget>[
              Text(
                "SHIVAM TRIPATHI",
                style: TextStyle(fontSize: 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                  Text("PROGRAMMER",style: TextStyle(fontSize: 20),),
                 ],
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[

                   Padding(
                                padding: EdgeInsets.only(top: 30),
                                child:Container(

                                   child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[

                                      Text("     500k \n Projects     ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text("     500k \n Application   ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text("     500k \n Reports    "   ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                                  ],
                                ),
                                ),
                                
                   ),
                   
                 ],
              ),
                 
            ],
          )),
          Padding(
          padding: EdgeInsets.only(top: 40),
          child:   MaterialButton(
              height: 30,
              minWidth: 300.0,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
           child: Text("follow ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                
            ),

           onPressed: (){},

          ),

          )
        ],
      )),
    
    );
  }
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(4.0, size.width);
    path.lineTo(size.width, 90.0);
    path.lineTo(size.width, 5.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
