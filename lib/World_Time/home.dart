import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map? data;

  @override
  Widget build(BuildContext context) {

    data = data?.isNotEmpty == true ? data : ModalRoute.of(context)!.settings.arguments as Map?;
    print('Data received in home: $data');
    print('Location: ${data?['location']}');
    print('Time: ${data?['time']}');
    print('Is Daytime: ${data?['isDaytime']}');
    print('Will show: ${data?['isDaytime'] == true ? 'DAY' : 'NIGHT'} image');


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              data?['isDaytime'] == true 
                ? 'assets/day.png' 
                : 'assets/night.png',
            ),
            fit: BoxFit.cover,
            onError: (exception, stackTrace) {
              // Fallback to gradient background if image not found
              return;
            },
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: data?['isDaytime'] == true 
                ? [
                    Colors.orange.withOpacity(0.3),
                    Colors.yellow.withOpacity(0.2),
                  ]
                : [
                    Colors.indigo.withOpacity(0.4),
                    Colors.purple.withOpacity(0.3),
                  ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
              child: Column(
                children: <Widget>[
                  TextButton.icon(
                    onPressed: () async {
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time' : result['time'],
                          'location' : result['location'],
                          'isDaytime' : result['isDaytime'],
                        };
                      });
                    },
                    icon: Icon(
                      Icons.edit_location_alt_outlined,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    label: Text(
                      'Edit Location',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data?['location'] ?? 'Unknown Location',
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),

                  SizedBox(height: 20.0),
                  Text(
                    data?['time'] ?? 'Unknown Time',
                    style: TextStyle(
                      fontSize: 66.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
