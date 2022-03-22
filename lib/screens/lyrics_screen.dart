import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/lyrics.dart';
import 'package:flutter_application_3/data/song_subtitle.dart';
import 'lyrics_screen.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({
    Key? key,
    required this.songTitle,
    required this.id,
  }) : super(key: key);
  final String songTitle;
  final int id;
  @override
  Widget build(BuildContext context) {
    final lyrics = idToLyrics[id] ?? 'Lyrics missing';
    return Scaffold(
      appBar: AppBar(
        title: Text('lyrics'),
      ),
      body: Lyrics(lyrics: lyrics),
    );
  }
}

class Lyrics extends StatelessWidget {
  const Lyrics({
    Key? key,
    required this.lyrics,
  }) : super(key: key);
  final String lyrics;

  @override
  Widget build(BuildContext context) {
    return Text(lyrics);
  }
}
