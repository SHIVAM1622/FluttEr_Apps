import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
     
      var name = [
           "abdul","Alankrit","robert","thavas","jay","shivam"
    ];
    

  @override
  Widget build(BuildContext context) {
    return Container(
           child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext ctx, index)=>
             
                Container(
                   decoration: BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(50)),
                  width: double.infinity,
                  height: 400,
                  child: Column(
                    
                    children: <Widget>[
                      ListTile(
                       title: Text(name[index]),
                        subtitle: Text("YOU KNOW WHO I'M"),
                         trailing: Icon(Icons.arrow_right) ,
                         
                        leading:CircleAvatar(
                          
                          backgroundImage:  NetworkImage('https://www.myagecalculator.com/images/robert-downey-jr.jpg'),
                           
                        ),

                        
                      ),
                      Container( 
                       color: Colors.grey,
                        height: 200,
                        width: double.infinity,
                        child: Image.network("https://media1.giphy.com/media/l3975CZuyQgoNVuOA/giphy.gif?cid=790b7611bddbd7b272a4f090a525e350b7e79be58e3a0ef1&rid=giphy.gif"),

                      ),
                      
                         Row(
                             children: <Widget>[
                              Padding(padding: EdgeInsets.all( 20),
                                child:  Icon(Icons.thumb_up),
                              ),
                              Padding(
                               padding: EdgeInsets.only(left: 90),
                               child:   Icon(Icons.comment),
                              ),
                            
                                Padding(
                               padding: EdgeInsets.only(left: 130),
                              child:   Icon(Icons.share),
                              
                                ),
                             ],
                        
                            
                           
                            
                             
                        
                            
                             
                            
                                
                              
                            
                         ),
                    ],
                  
                  ),
                )
              
           ),
        
    );
  }
}