import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class launchURL {

  String url;

  launchURL(String a) {
    url = a;
  }

  void launching() async {

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


/*  if (response.statusCode == 200) {
      await launch(url);
    }
    else {
      throw 'Could not launch $url';
    }

   */


}