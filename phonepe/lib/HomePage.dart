import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/icon_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
 


  var icon = [
    Icon(Icons.trending_up),
    Icon(Icons.home),
    Icon(Icons.perm_identity),
    Icon(Icons.account_balance),
    Icon(Icons.airline_seat_legroom_normal),
    Icon(Icons.arrow_upward),
    Icon(Icons.add_circle),
    Icon(Icons.add_to_photos),
  ];

  var textlist = [
    "contact",
    "account",
    "Self",
    "Bank_balance",
    "upward",
    "airplane",
    "circle",
    "photos"
  ];

  var photos = [
    AssetImage("assets/one.jpg"),
    AssetImage("assets/two.jpg"),
    AssetImage("assets/three.jpg"),
    AssetImage("assets/four.jpg"),
    AssetImage("assets/five.jpg"),
    AssetImage("assets/six.jpg"),
    AssetImage("assets/seven.jpg")
  ];
  var names = [
    "vinod",
    "ashok",
    "kamlesh",
    "raja",
    "abdul",
    "alankrit",
    "kala",
  ];

  @override
  Widget build(BuildContext context) {
    return 
     
       SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10), 
              child: Text("MONEY TRANSFER", style: TextStyle(fontSize: 15)),
            ),

            SizedBox(
              
              height: 100,
              child: ListView.builder(
               
                itemCount: 8,
                itemBuilder: (BuildContext ctx, index) => Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: icon[index],
                      iconSize: 40,
                      padding: EdgeInsets.fromLTRB(, 20, 30, 10),
                    ),
                    Text(textlist[index]),
                  ],
                ),
              ),
            ),
            SizedBox(
             
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
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
            Row(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 120,
                  color: Color(0xffF5BCBA),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/percent.png"),
                        ),
                      ),
                      Text("view All \n offer")
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 120,
                  color: Color(0xffF5BCBA),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/Gift.png"),
                        ),
                      ),
                      Text("view All \n Reward")
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 120,
                  color: Color(0xffF5BCBA),
                  child: Column(
                     children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/refer.png"),
                        ),
                      ),
                      Text("Refer and \n earn")
                    ],
                  ),
                ),
              
              ],
              
            ),
            Container(
               alignment: Alignment.topLeft,
              child: Text("Recharge & pay bills",style:TextStyle(fontSize: 15,) )),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                    backgroundImage: AssetImage("assets/two.jpg"),  
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/two.jpg"),
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/two.jpg"),
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/two.jpg"),
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/two.jpg"),
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/two.jpg"),
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/two.jpg"),
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/two.jpg"),
                      radius: 25,
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      
     
      
  
  }
}
