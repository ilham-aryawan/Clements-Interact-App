import 'package:flutter/material.dart';
import 'Officerpage.dart';

class Points extends StatefulWidget {
  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Points'),
    backgroundColor: Colors.blueGrey[400],
    ),
    body: Container(
    child: ButtonTheme(
        minWidth: 375,
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
        ))));
  }
}
