import 'package:flutter/material.dart';

class balance extends StatefulWidget {
  @override
  _balanceState createState() => _balanceState();
}

class _balanceState extends State<balance> {
   var photos = [
    AssetImage("assets/images/upi.jpg"),
    AssetImage("assets/images/credit.jpg"),
    AssetImage("assets/images/debit.jpg"),
    AssetImage("assets/images/paypal.jpg"),
  
  ];
  var names = [
    "UPI",
    "CREDIT",
    "DEBIT",
    "paypal",
  
  ];

  var names1 = [
         "phonepe_wallet","freecharge","airtel","paypal"
  ];


  var photos1 =[
          
            AssetImage("assets/images/pe.png"),
    AssetImage("assets/images/freecharge.jpg"),
    AssetImage("assets/images/airtel.jpg"),
    AssetImage("assets/images/jio.png"),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

              height: 400,
            
             child:SingleChildScrollView(
          
              
               child:
               Column(
                 children: <Widget>[
                   SizedBox(
              height: 120,
              child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext ctx, index) => Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 8, 8),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: photos[index],
                          ),
                        ),
                        Text(names[index])
                      ],
                    ),
              ),
            ),
              SizedBox(
              height: 120,
              child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext ctx, index) => Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 8, 8),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: photos1[index],
                          ),
                        ),
                        Text(names1[index])
                      ],
                    ),
              ),
            ),
                   Container(
            height: 50,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Wealth Management",style: TextStyle(fontWeight:FontWeight.bold, fontSize:15),
            ),
          ),
           SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/images/gold.jpg"), radius: 30,),
                    Text("Gold")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/images/tax.png"), radius: 30,),
                    Text("Tax Saving Fund")
                  ],),
                ),
                
              ],
            ),
          ),
                 ],
               ), 
          
                  
             ),
            
    );
  }
}