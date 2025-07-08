import 'package:flutter/material.dart';
import '../services/world_time.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'Philippines', url: 'Asia/Manila'),
    WorldTime(location: 'London', url: 'Europe/London'),
    WorldTime(location: 'New York', url: 'America/New_York'),
    WorldTime(location: 'Los Angeles', url: 'America/Los_Angeles'),
    WorldTime(location: 'Tokyo', url: 'Asia/Tokyo'),
    WorldTime(location: 'Sydney', url: 'Australia/Sydney'),
    WorldTime(location: 'Paris', url: 'Europe/Paris'),
    WorldTime(location: 'Berlin', url: 'Europe/Berlin'),
    WorldTime(location: 'Moscow', url: 'Europe/Moscow'),
    WorldTime(location: 'Dubai', url: 'Asia/Dubai'),
    WorldTime(location: 'Singapore', url: 'Asia/Singapore'),
    WorldTime(location: 'Hong Kong', url: 'Asia/Hong_Kong'),
  ];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    print('Selected location: ${instance.location}');
    print('Timezone URL: ${instance.url}');
    await instance.getTime();
    print('Retrieved time: ${instance.time}');
    //navigate to home screen
    Navigator.pop(context, {
      'location' : instance.location,
      'time' : instance.time,
      'isDaytime' : instance.isDaytime,
    });
  }


  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                title: Text(locations[index].location),
            ),
            ),
          );
        }
      ),
    );
  }
}
