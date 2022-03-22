import 'package:flutter/material.dart';
import '../data/song_subtitle.dart';
import 'lyrics_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My music"),
      ),
      body: SongList(),
    );
  }
}

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songTitles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(songTitles[index]),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              print(songTitles[index]);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LyricsScreen(
                          id: index,
                          songTitle: songTitles[index],
                        )),
              );
            },
          ),
        );
      },
    );
  }
}
