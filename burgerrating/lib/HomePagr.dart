import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Burger Rating",),
             
       ),
       body: Container(
         width: double.infinity,
         height: double.infinity,
         child: Column(
           children: <Widget>[
            
             Image.network("https://www.seriouseats.com/recipes/images/2015/07/20150702-sous-vide-hamburger-anova-primary-1500x1125.jpg")
             ,SizedBox(
               height: 20.0,
             ),
            Container( 
              decoration:BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16),
                color: Colors.green,
               
              ),
               padding:EdgeInsets.only(top:20),
              
              
              height:100,
              width: 350,
              child:  RatingBar(
                
               maxRating:8,
               isHalfAllowed: true,
                halfFilledIcon: Icons.check_circle_outline,
               onRatingChanged: (rating) => print(rating),
               filledIcon: Icons.check_box_outline_blank,
               emptyIcon: Icons.check_box_outline_blank,
             ),
            )
           ],
         ),
       ),
    );
    
  }
}