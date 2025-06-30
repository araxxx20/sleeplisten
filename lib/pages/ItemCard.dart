import 'package:flutter/material.dart';
import 'package:my_sleeplistenapp/pages/Musics.dart';

class Itemcard extends StatelessWidget {
  final Musics musics;

  const Itemcard({
    super.key,
    required this.musics,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[50],
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // LEFT: title + artist
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  musics.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  musics.artist,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            // RIGHT: duration
            Text(
              '${musics.duration} mins',
              style: TextStyle(
                fontSize: 15,
                color: Colors.pink[200],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
