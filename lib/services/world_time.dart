import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  late String location; // location name for the UI
  late String time; // the time in that location
  late String url; // location url for api endpoint
  late bool isDaytime; // whether it's day or night

  WorldTime({required this.location, required this.url});

  late DateTime now;

  Future<void> getTime() async {
  try {
    print('Making API call for timezone: $url');
    Response response = await get(Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=${url}'));
    print('API Response status: ${response.statusCode}');
    print('API Response body: ${response.body}');
    
    Map data = jsonDecode(response.body);
    
    // Parse the date and time from the API response
    String dateTimeString = "${data['date']} ${data['time']}";
    print('Parsed dateTimeString: $dateTimeString');
    
    // Parse the date format "DD/MM/YYYY HH:MM" to DateTime
    List<String> parts = dateTimeString.split(' ');
    List<String> dateParts = parts[0].split('/');
    List<String> timeParts = parts[1].split(':');
    
    now = DateTime(
      int.parse(dateParts[2]), // year
      int.parse(dateParts[1]), // month
      int.parse(dateParts[0]), // day
      int.parse(timeParts[0]), // hour
      int.parse(timeParts[1]), // minute
    );
    
    // Format the time using DateFormat
    time = DateFormat.jm().format(now);
    print('Final formatted time: $time');
    
    // Determine if it's day or night (6 AM to 6 PM is considered day)
    int hour = now.hour;
    isDaytime = hour >= 6 && hour < 18;
    print('Hour: $hour');
    print('Is 6 AM or later: ${hour >= 6}');
    print('Is before 6 PM: ${hour < 18}');
    print('Is daytime: $isDaytime');
    print('Time period: ${isDaytime ? 'DAY' : 'NIGHT'}');

  } catch (e) {
    print('Error getting time for $url: ' + e.toString());
    time = 'Could not get time data';
  }
}

}

WorldTime instance = WorldTime(location: 'London', url: 'Europe/London');
