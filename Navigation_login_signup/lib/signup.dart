import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  var email = TextEditingController();
  var pas = TextEditingController();
  
  check(){
   String emailc =  "shivamtripathi5836@gmail.com";
    String passc = "kaladon";
    String eerror = "incorrect email";
    String epass = "icorrect pass";
    if(email.text == emailc && pas.text == passc){
        email.text = "success";
        pas.text = "success";
    }
    else if(email.text != emailc){
      email.text = eerror;
    }
    else if(pas.text != passc){
      pas.text = epass;
    }
    else if(pas.text != passc || email.text != emailc){
      email.text = "something wrong";
    }
     
  }

  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData.light(),
       debugShowCheckedModeBanner: false,
       home:Scaffold(
         floatingActionButton:FloatingActionButton(
             onPressed: (){},
             child: Icon(Icons.screen_lock_landscape),
           ),
           appBar: AppBar(
          title: Text ("Log-in"),
           backgroundColor: Colors.green,
           ),
           body: Container( 
               color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 15,

                    ),
                        Text("       WELCOME TO LCO        "
                        ,style: TextStyle(fontSize:30,backgroundColor:Colors.grey),
                        ),
                        
                        
                            
                        TextField(
                            controller: email,
                               decoration: InputDecoration(hintText: "ENTER EMAIL"),
                        ),
                         TextField(
                            controller: email,
                               decoration: InputDecoration(hintText: "Mobile No."),
                        ),
                         TextField(
                            controller: email,
                               decoration: InputDecoration(hintText: "ENTER PASW0RD"),
                        ),
                        
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: TextField(
                          controller: pas,
                                      decoration: InputDecoration(hintText: "Confirm Password"),
                                      keyboardType: TextInputType.text,
                        ),
                          ),
                        FlatButton(
                          child: Text("Log-IN"),
                          color: Colors.amber,
                          onPressed: ()=> check(),
                        ),
                        FlatButton(
                          child: Text("SIGN-UP WITH GOOGLE"),
                          color: Colors.blue,

                          onPressed: (){},
                        )


                          
                        

                  ],
                ),

                 

           ),
           

       
       
      
        
    )
    );
  }
}