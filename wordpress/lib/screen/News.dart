import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share/share.dart';
import 'package:launch_review/launch_review.dart';
class News extends StatefulWidget {
  final String title;
  final String disc;
  final String image;
  News({Key key, @required this.title, this.disc, this.image})
      : super(key: key);
  @override
  _NewsState createState() =>
      _NewsState(title: title, disc: disc, image: image);
}

class _NewsState extends State<News> {
  String title;
  String disc;
  String image;
  _NewsState({Key key, @required this.title, this.disc, this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            child: SliverAppBar(
                expandedHeight: 150.0,
                flexibleSpace:  FlexibleSpaceBar(
                  title: Text(title,style: TextStyle(color: Colors.black),),
                  background: Image(image: NetworkImage(image),),
                ),
                )),
      ];
    },  body: Center(child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: <Widget>[
              Html(data:disc),
              MaterialButton(
                onPressed: ()=> Share.share('check out my news $title'),
                 child: Text("Share"),
                
              )
              ,MaterialButton(
                onPressed:()=> LaunchReview.launch(androidAppId: "com.iyaffle.rangoli"),
                child: Text("Review it"),
              )
            ],
          ),
    ),),
    
    ));
  }
}
