import 'package:flutter/material.dart';
import 'package:my_sleeplistenapp/pages/AddMusic.dart';
import 'package:my_sleeplistenapp/pages/Dashboard.dart';
import 'package:my_sleeplistenapp/pages/ListItems.dart';
import 'World_Time/choose_location.dart';
import 'World_Time/home.dart';
import 'World_Time/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/dashboard': (context) => const Dashboard(),
      '/list': (context) => const Listitems(),
      '/add': (context) => const Addmusic(),
      // sa world time are
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
