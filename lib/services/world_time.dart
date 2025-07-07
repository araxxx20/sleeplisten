import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  late String location; // location name for the UI
  late String time; // the time in that location
  late String url; // location url for api endpoint

  WorldTime({required this.location, required this.url});

  Future<void> getTime() async {

    // make request
    Response response = await get(Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=Europe/London'));
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data

    String datetime = data['datetime'];
    String offset = data['utc_offset'];
    //print(datetime );
    //print(offset);

    // create datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    //set the time property
    time = now.toString();

  }

}

WorldTime instance = WorldTime(location: 'London', url: 'Europe/London');
