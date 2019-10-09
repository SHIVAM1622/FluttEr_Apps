import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:launch_review/launch_review.dart';
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height:double.infinity,
      child: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      size: 125,
                      color: Colors.black87,
                    )),
              ),
              Container(
                  width: double.infinity,
                  height: 280,
                  child: ListView(
                    children: <Widget>[
                   ExpansionTile(
                        leading: Icon(Icons.watch_later),
                        title: Text("lOGIN"),
                        trailing: Icon(Icons.arrow_drop_down),
                        children: <Widget>[
                          Container(
                              child: Column(
                            children: <Widget>[
                            RaisedButton(
                                child: const Text('log_in'),
                                onPressed: _handleSignIn,
                              ),
                            ],
                          ))
                        ],
                      ),
                         

                        
                      ExpansionTile(
                        leading: Icon(Icons.local_library),
                        title: Text("Sign-In"),
                        trailing: Icon(Icons.arrow_drop_down),
                        children: <Widget>[
                           
                          
                          Container(
                              child: Column(
                            children: <Widget>[
                              RaisedButton(
                                child: const Text('SIGN IN'),
                                onPressed: _handleSignIn,
                              ),
                              Text(
                                "Google Sign-In is a secure authentication system that reduces the burden of login for your users, by enabling them to sign in with their Google account—the same account they already use with Gmail, Play, Photos and other Google services.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          )),
                         
                        ],
                      ),
                                 ExpansionTile(
                        leading: Icon(Icons.local_library),
                        title: Text("Rate-us"),
                        trailing: Icon(Icons.arrow_drop_down),
                        children: <Widget>[
                           
                          
                          Container(
                            
                              child: Column(
                            children: <Widget>[
                             MaterialButton(
                onPressed:()=> LaunchReview.launch(androidAppId: "com.iyaffle.rangoli"),
                child: Text("Review it"),
              )
                             
                            ],
                          )),
                         
                        ],
                      ),
                         
                      ExpansionTile(
                        leading: Icon(Icons.panorama_vertical),
                        title: Text("PRIVACY"),
                        trailing: Icon(Icons.arrow_drop_down),
                        children: <Widget>[
                          Container(
                              child: Column(
                            children: <Widget>[
                             Text(
                               "Privacy Policies and Terms and Conditions (T&C) agreements are both, as the names imply, legally binding contracts. The main difference between these two types of agreements is this: A Privacy Policy agreement exists to protect your clients. A T&C agreement exists to protect you, the company."
                             )
                            ],
                          ))
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
