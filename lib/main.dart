import 'package:flutter/material.dart';
import 'package:my_sleeplistenapp/pages/AddMusic.dart';
import 'package:my_sleeplistenapp/pages/Dashboard.dart';
import 'package:my_sleeplistenapp/pages/ListItems.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/' : (context) => Listitems(),
      '/add' : (context) => Addmusic(),
    },
  ));
}

