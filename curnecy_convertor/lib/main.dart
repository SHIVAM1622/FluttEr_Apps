import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var input = new TextEditingController();
  var output = TextEditingController();
  buttonPressed(String btntext) {
    if (input.text == "") {
      print("text empty");
    }
    setState(() {
      double amm = double.parse(input.text);
      input.text = "";
      if (btntext == "Dollar") {
        output.text = (amm * 0.014).toString();
      }
      if (btntext == "Euro") {
        output.text = (amm * 0.013).toString();
      }
    });
    
  }

  Widget buildbutton(String buttontxt, col) {
    return Expanded(
      child: RaisedButton(
        //col,
        color: col,
        padding: EdgeInsets.all(20),
        child: Text(buttontxt),
        onPressed: () => buttonPressed(buttontxt),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "CURRENCY CONVERTOR",
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("convertor"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Column(children: <Widget>[
            
            TextField(
              decoration: InputDecoration(
                hintText: "ENTER INPUT",
              ),
              controller: input,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "ANSWER",
              ),
              controller: output,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      buildbutton("Dollar", Colors.purple),
                      buildbutton("Euro", Colors.red),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
