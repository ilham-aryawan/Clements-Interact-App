import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';
import 'navigationpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Clements Interacter'),
          backgroundColor: Colors.blueGrey[400],
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
              Column(children: <Widget>[
                Row(children: <Widget>[
                  Column(children: <Widget>[
                    Image(
                        image: AssetImage('assets/star 2.gif'),
                        height: 90,
                        width: 90),
                    Image(
                        image: AssetImage('assets/star 2.gif'),
                        height: 90,
                        width: 90)
                  ]),
                  Image(image: AssetImage('images/Clements Interact Logo.png')),
                  Column(children: <Widget>[
                    Image(
                        image: AssetImage('assets/star 2.gif'),
                        height: 90,
                        width: 90),
                    Image(
                        image: AssetImage('assets/star 2.gif'),
                        height: 90,
                        width: 90)
                  ])
                ]),
                Text(''),
                Text('Welcome to the Clements Interact App!',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18.5,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                Text(''),
                Text('Sign in with your Google account below',
                    style: TextStyle(
                        color: Colors.blueGrey[400],
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                Text('Make an account if you do not have a Gmail',
                    style: TextStyle(
                        color: Colors.blueGrey[400],
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                Text(''),
                Row(children: <Widget>[
                  Icon(Icons.arrow_downward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_downward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_downward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_downward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_downward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_downward, color: Colors.lightBlueAccent),
                ]),
                Body(),
                Row(children: <Widget>[
                  Icon(Icons.arrow_upward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_upward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_upward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_upward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_upward, color: Colors.lightBlueAccent),
                  Icon(Icons.arrow_upward, color: Colors.lightBlueAccent)
                ]),
                Text(''),
                Row(children: <Widget>[
                  Image(
                      image: AssetImage('assets/Bridgette Mask.PNG'),
                      height: 162,
                      width: 100),
                  Image(
                      image: AssetImage('assets/Bridgette 2.PNG'),
                      height: 162,
                      width: 100),
                  Image(
                      image: AssetImage('assets/Bridgette Scary.PNG'),
                      height: 162,
                      width: 100)
                ])
              ])
            ])));
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FirebaseUser user;

  void click() {
    signInWithGoogle().then((user) => {
          this.user = user,
          Navigator.push(
              context,
              MaterialPageRoute(
                  //       builder: (context) => MyHomePage(user.displayName)))
                  builder: (context) => NavigationPage(user.displayName)))
        });
  }

  Widget intro() {
    Text('Points',
        style: TextStyle(
            color: Colors.blueGrey[400],
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold));
  }

  Widget googleLoginButton() {
    return OutlineButton(
        onPressed: this.click,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        splashColor: Colors.grey,
        borderSide: BorderSide(color: Colors.grey),
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                      image: AssetImage('assets/google logo.png'), height: 35),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Sign in With Google',
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ))
                ])));
  }

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.center, child: googleLoginButton());
  }
}
