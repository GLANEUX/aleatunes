import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

class ArtistSongsPage extends StatefulWidget {
  final int artistId;
  final String artistName;

  const ArtistSongsPage({super.key, required this.artistId, required this.artistName});

  @override
  _ArtistSongsPageState createState() => _ArtistSongsPageState();
}

class _ArtistSongsPageState extends State<ArtistSongsPage> {
  List<dynamic> topTracks = [];
  final AudioPlayer _audioPlayer = AudioPlayer();
  String _currentlyPlayingUrl = '';
  bool _isPlaying = false;

  Future<void> fetchTopTracks() async {
    final response = await http.get(Uri.parse('https://api.deezer.com/artist/${widget.artistId}/top?limit=5'));
    final result = jsonDecode(response.body);

    setState(() {
      topTracks = result['data'].where((track) => track['preview'] != '').toList();
    });
  }

  void _playPausePreview(String url) async {
    if (_isPlaying && _currentlyPlayingUrl == url) {
      await _audioPlayer.pause();
      setState(() {
        _isPlaying = false;
      });
    } else {
      await _audioPlayer.play(UrlSource(url));
      setState(() {
        _isPlaying = true;
        _currentlyPlayingUrl = url;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchTopTracks();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.artistName),
      ),
      body: topTracks.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topTracks.length,
              itemBuilder: (context, index) {
                final track = topTracks[index];
                return ListTile(
                  leading: Image.network(track['album']['cover_small']),
                  title: Text(track['title']),
                  subtitle: Text(track['artist']['name']),
                  trailing: track['preview'] != ''
                      ? IconButton(
                          icon: Icon(
                            _isPlaying && _currentlyPlayingUrl == track['preview']
                                ? Icons.pause_circle_filled
                                : Icons.play_circle_filled,
                          ),
                          onPressed: () => _playPausePreview(track['preview']),
                        )
                      : null,
                );
              },
            ),
    );
  }
}
