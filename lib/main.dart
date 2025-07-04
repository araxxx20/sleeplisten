import 'package:flutter/material.dart';
import 'package:my_sleeplistenapp/pages/AddMusic.dart';
import 'package:my_sleeplistenapp/pages/Dashboard.dart';
import 'package:my_sleeplistenapp/pages/ListItems.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/dashboard',
    routes: {
      '/dashboard': (context) => const Dashboard(),
      '/list': (context) => const Listitems(),
      '/add': (context) => const Addmusic(),
    },
  ));
}
