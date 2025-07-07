import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import '../services/world_time.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'London', url: 'Europe/London');
    await instance.getTime();
    print(instance.time);
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }

  void getTime() {}
}
