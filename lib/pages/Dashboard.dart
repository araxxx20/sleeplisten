import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SnuzicHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SnuzicHome extends StatelessWidget {
  const SnuzicHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        centerTitle: true,
        title: const Text(
          'Snuzic',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_alarm, color: Colors.black, size: 30),
            label: const Text(
              'Add Alarm',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink[200],
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
  }