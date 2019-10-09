import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'Business.dart';
import 'Sports.dart';
import 'Politics.dart';
class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: Container(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.tealAccent,
                  child: Text(
                    "POLITICS",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  height: 100,
                  minWidth: double.infinity,
                  onPressed:  () {
                    Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context)=>Politics()
                      )
                    );
                  }
                ),
                Divider(
                  height: 20,
                ),
                MaterialButton(
                  color: Colors.tealAccent,
                  child: Text(
                    "SPORTS",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  height: 100,
                  minWidth: double.infinity,
                  onPressed:  () {
                    Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context)=>Sports()
                      )
                    );
                  }
,
                ),
                Divider(
                  height: 20,
                ),
                MaterialButton(
                  splashColor: Colors.white70,
                  color: Colors.tealAccent,
                  child: Text(
                    "Business",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  height: 100,
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context)=>Business()
                      )
                    );
                  }

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
//   _sendtonewscreen() {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => Business(
                
//                 )));
//   }
// }
}