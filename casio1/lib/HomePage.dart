import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double num1=0.0;
  double num2=0.0;
  String input ="0";
  String output ="0";
  String operater="";
 


  

  inputt(String k){
    
      if(k =="Clear"){
       num1=0.0;
       num2=0.0;
       output= "0";
     }  


       else if (k =="+" || k =="-" || k =="/" || k =="x"){
      num1= double.parse(output);
      operater= k;
      output="0";
    
    }
   


 Widget buttonc(String k){
   return Expanded(
     child: Container(
       child: OutlineButton(
         padding: EdgeInsets.all(36),
         child: Text("$k"),
         onPressed: ()=> inputt(k),
       )
     ),
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CASIO"),
        ),
        body: Container(
              child: Column(
                
                children: <Widget>[
                  Container(
                 child: TextField(
                   decoration: InputDecoration(hintText: "input"),
                
                 ),
                 ),
                 Container(
                  child: TextField(
                    decoration: InputDecoration(hintText: "output"),
                  
                
                  ),
                  
                 ),
                  Expanded(
                    child: Divider(
                      height: 10,
                    ),
                  ),
                  Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
              Container(
               
                child: Column(
                  
                  children: <Widget>[
                    
                             Row(
                       
               children: <Widget>[
                  buttonc("4"),
                  buttonc("5"),
                  buttonc("6"),
                  buttonc("+"),
                ],
              ),
              Row(
                children: <Widget>[
                  buttonc("7"),
                  buttonc("8"),
                  buttonc("9"),
                  buttonc("-"),
                ],
              ),
             
               Row(
               children: <Widget>[
                  buttonc("1"),
                  buttonc("2"),
                  buttonc("3"),
                  buttonc("/"),
                ],
              ),
               Row(
                children: <Widget>[
                  buttonc("."),
                  buttonc("0"),
                  buttonc("00"),
                  buttonc("*"),
                ],
              ),
              Row(
                children: <Widget>[
                  buttonc("CLEAR"),
                   buttonc("="),
                ],
              
                
              ),
                  ],
                ) ,
              )


                        ],
                      ),
                    ), 
              

              ],),

        ),
    );
  }
}