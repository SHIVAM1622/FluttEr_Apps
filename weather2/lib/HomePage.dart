import 'package:flutter/material.dart';
import 'weather.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  var dropdownValue = 'jhansi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: Container(
                height: 400,
          child: Column(
            children: <Widget>[
              Center(
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['jhansi', 'bhopal', 'patna', 'jaipur']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
                
              ),
              MaterialButton(
                   color: Colors.black45,
                onPressed: _sendtonewscreen,
              )
            ],
          ),
        ),
      ),
      
    );
  }

   _sendtonewscreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => weather(
                  
                  dropdownValue:dropdownValue,
                )));
  }

}
