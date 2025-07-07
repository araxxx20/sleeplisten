import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  late String location; // location name for the UI
  late String time; // the time in that location
  late String url; // location url for api endpoint

  WorldTime({required this.location, required this.url});

  Future<void> getTime() async {
  try {
    Response response = await get(Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=Europe/London'));
    Map data = jsonDecode(response.body);
    time = "${data['date']} ${data['time']}"; // e.g. "06/08/2024 13:45"
  } catch (e) {
    print('Error getting time: ' + e.toString());
    time = 'Could not get time data';
  }
}

}

WorldTime instance = WorldTime(location: 'London', url: 'Europe/London');
