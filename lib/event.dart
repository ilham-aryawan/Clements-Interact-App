import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Event {
  String eventName;
  String eventType;
  String eventDate;
  String eventTime;
  String location;
  String location2;
  String job;
  String extraInfo;
  int points;
  String chsURL; //Interact sign-up URL
  String officialURL;
  String logoURL;//Official sign-up URL
  String extraURL;

  Event({
    this.eventName,
    this.eventType,
    this.eventDate,
    this.eventTime,
    this.location,
    this.location2,
    this.job,
    this.extraInfo,
    this.points,
    this.chsURL,
    this.officialURL,
    this.logoURL,
    this.extraURL,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      eventName: json["name"] as String,
      eventType: json["type"] as String,
      eventDate: json["date"] as String,
      eventTime: json["time"] as String,
      location: json["location"] as String,
      location2: json["location2"] as String,
      job: json["job"] as String,
      extraInfo: json["extraInfo"] as String,
      points: json["points"] as int,
      chsURL: json["chsURL"] as String,
      officialURL: json["officialURL"] as String,
      logoURL: json["logoURL"] as String,
      extraURL: json["extraURL"] as String,
    );
  }

}








//List<Map> data = jsonDecode(response.body);

/* if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      //return Event.fromJson(jsonDecode(response.body));

      Map data = jsonDecode(response.body);
      eventDate = data['userId'];
      points = data['id'];
      eventName = data['title'];

    }
    else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load event');
    }

    */