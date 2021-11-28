import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'event.dart';
import 'package:interacttester_app/launchURL.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class event_list extends StatefulWidget {
  @override
  event_list_state createState() => event_list_state();

}

//Future<List<Event>> fetchEvent(http.Client client) async {
 // final response = await client.get(
 //    'https://interact-app-backend.herokuapp.com/event/');
  //await http.get('https://jsonplaceholder.typicode.com/albums/$url');

  //return compute(parsePhotos, response.body);
//}

List<Event> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Event>((json) => Event.fromJson(json)).toList();
}


class event_list_state extends State<event_list> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Volunteer Events'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[400],
          bottom:TabBar(
            tabs:[
              Tab(icon: Icon(Icons.accessibility),
                  text: "In-Person"),
              Tab(icon: Icon(Icons.personal_video),
                  text: "Virtual"),
              Tab(icon: Icon(Icons.add_box),
                text: "Find Event",)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            FutureBuilder<List<Event>>(
       //       future: fetchEvent(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasError) print(snapshot.error);
                return snapshot.hasData
                    ? ListViewBuilder(events: snapshot.data, eventType: "In-person")
                    : Center(child: CircularProgressIndicator());
              },
            ),
            FutureBuilder<List<Event>>(
      //        future: fetchEvent(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasError) print(snapshot.error);
                return snapshot.hasData
                    ? ListViewBuilder(events: snapshot.data, eventType: "Virtual")
                    : Center(child: CircularProgressIndicator());
              },
            ),
            FutureBuilder<List<Event>>(
      //        future: fetchEvent(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasError) print(snapshot.error);
                return snapshot.hasData
                    ? ListViewBuilder(events: snapshot.data, eventType: "find")
                    : Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }

}


class ListViewBuilder extends StatelessWidget {
  List<Event> events;
  String eventType;

  ListViewBuilder({
    Key key,
    this.events,
    this.eventType,
  }) : super(key: key);

  //work on a way to add string to listviewbuilder constructor, and then assign each listviewbuilder a type - virtual or person

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        if(events[index].eventType == eventType) {
          //use match to match each event to the correct type
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 550,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text( 'Event: ' + events[index].eventName,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text( 'Date: ' + events[index].eventDate,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text( 'Points: ' + (events[index].points).toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text( 'Job: ' + events[index].job,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text( 'Location: ' + events[index].location,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text( 'Extra Info: ' + events[index].extraInfo,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      onPressed: () {
                        launchURL instance = launchURL(events[index].chsURL);
                        instance.launching();
                      },
                      color: Colors.white,
                      child: Text("Clements Interact Sign-Up", style: TextStyle(color: Colors.blueGrey)),
                    ),
                    RaisedButton(
                      onPressed: () {
                        launchURL instance = launchURL(events[index].officialURL);
                        instance.launching();
                      },
                      color: Colors.white,
                      child: Text("Official Sign-Up", style: TextStyle(color: Colors.blueGrey)),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/submitpoints');
                      },
                      color: Colors.white,
                      child: Text('Submit Pictures for Points', style: TextStyle(color: Colors.blueGrey)),
                    )
                  ],
                ),
              ),
            ),
          );
        }
        return Center(
          child: Container(
            width: 5,
          ),
        );
      },
    );
  }


}