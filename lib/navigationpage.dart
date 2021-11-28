import 'package:flutter/material.dart';
import 'package:interacttester_app/Points.dart';
import 'OfficerPage.dart';
import 'login.dart';
import 'PointRequirements.dart';
import 'submitPictures.dart';
import 'event_list.dart';
import 'package:interacttester_app/launchURL.dart';
import 'messages_page.dart';
import 'Points.dart';
import 'Points2.dart';
import 'Points3.dart';

class NavigationPage extends StatefulWidget {
  final String name;

  NavigationPage(this.name);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {


  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Navigation Page'),
          backgroundColor: Colors.blueGrey[400],
        ),
        body: Container(
            child: Column(children: <Widget>[
          Text(''),
          Text('Hello ' + widget.name + '!',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.5,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
          Text(''),
          Text('Click a button to navigate to that page',
              style: TextStyle(
                  color: Colors.blueGrey[400],
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
          Text(''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
                minWidth: 330,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => officerPage()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text(
                    'Officer Page',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.lightBlueAccent,
                  color: Colors.blueGrey,
                ))
          ]),
          Text(''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
                minWidth: 330,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BarGraphDemo()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text(
                    'Point Requirements',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  icon: Icon(
                    Icons.assessment,
                    color: Colors.white,
                    size: 30,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.lightBlueAccent,
                  color: Colors.blueGrey,
                ))
          ]),
          Text(''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
                minWidth: 330,
                height: 50,
                  child: RaisedButton.icon(
                    onPressed: () {
                      launchURL instance = launchURL('https://docs.google.com/spreadsheets/d/1GSYMvX3ba4-41B-oD2w956M4gFsw1xGucLY_6N38R5I/edit?fbclid=IwAR1kZ3MWQpqsjKFvIeZiGNsO-kQ2WBHrld_asLgeXoQ8eZ5K0do1YByLQRE');
                      instance.launching();
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    label: Text(
                      'Points',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    icon: Icon(
                      Icons.pie_chart,
                      color: Colors.white,
                      size: 30,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.lightBlueAccent,
                    color: Colors.blueGrey,
                  ),
                ),
          ]),
          Text(''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
                minWidth: 330,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => submitPictures(widget.name)),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text(
                    'Submit Pictures',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 30,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.lightBlueAccent,
                  color: Colors.blueGrey,
                ))
          ]),
          Text(''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
                minWidth: 330,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => message_page()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text(
                    'Submit Questions',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  icon: Icon(
                    Icons.question_answer,
                    color: Colors.white,
                    size: 30,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.lightBlueAccent,
                  color: Colors.blueGrey,
                ))
          ]),
          Text(''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
                minWidth: 330,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text(
                    'The Interact Game',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  icon: Icon(
                    Icons.school,
                    color: Colors.white,
                    size: 30,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.lightBlueAccent,
                  color: Colors.blueGrey,
                ))
          ]),
          Text(''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
                minWidth: 330,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => event_list()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text(
                    'Volunteer Opportunities',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  icon: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 30,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.lightBlueAccent,
                  color: Colors.blueGrey,
                ))
          ])
        ])));
  }
}
