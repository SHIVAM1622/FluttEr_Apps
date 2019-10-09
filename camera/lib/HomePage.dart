import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("camera_app"),
      ),
      body: Container(
        child: _image == null ? Text("image not found") : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: _never,
      ),
    );
  }

  Future opencamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future openGallery() async {
    var galleryimage = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = galleryimage;
    });
  }

  Future<void> _never() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(),
          title: Text(
            'choose option',
            style: TextStyle(color: Colors.white),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    "open camera",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: openGallery,
                ),
                GestureDetector(
                  child: Text(
                    "open gallery",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: opencamera,
                )
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
