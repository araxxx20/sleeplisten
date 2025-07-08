import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import '../services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';
  bool isLoading = true;

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'London', url: 'Europe/London');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : instance.location,
      'time' : instance.time,
    });

    setState(() {
      time = instance.time;
      isLoading = false;
    });
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: SpinKitPouringHourGlass(
          color: Colors.pink,
          size: 100.0,

      ),
      ),
    );
  }

  void getTime() {}
}
