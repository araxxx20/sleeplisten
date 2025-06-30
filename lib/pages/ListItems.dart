import 'package:flutter/material.dart';
import 'package:my_sleeplistenapp/pages/ItemCard.dart';
import 'Musics.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<Musics> musics = [
    Musics(title: 'Someday', artist: 'Nina', duration: 3),
    Musics(title: 'Multo', artist: 'Cup of Joe', duration: 4),
    Musics(title: 'Saksi Ang Langit', artist: 'Dec Avenue', duration: 4),
    Musics(title: 'Let Me Be The One', artist: 'Jimmy Bondoc', duration: 5),
    Musics(title: 'I’ll Be', artist: 'Edwin McCain', duration: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text(
          'Snuzic',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'My Playlist',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: musics.map((music) {
                  return Itemcard(musics: music);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
