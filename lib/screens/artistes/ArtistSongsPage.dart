import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtistSongsPage extends StatefulWidget {
  final int artistId;
  final String artistName;
  final String shareUrl;
  final String artistImage;

  const ArtistSongsPage(
      {super.key,
      required this.artistId,
      required this.artistName,
      required this.shareUrl,
      required this.artistImage});

  @override
  _ArtistSongsPageState createState() => _ArtistSongsPageState();
}

class _ArtistSongsPageState extends State<ArtistSongsPage> {
  List<dynamic> topTracks = [];
  final AudioPlayer _audioPlayer = AudioPlayer();
  String _currentlyPlayingUrl = '';
  bool _isPlaying = false;

  Future<void> fetchTopTracks() async {
    final response = await http.get(Uri.parse(
        'https://api.deezer.com/artist/${widget.artistId}/top?limit=5'));
    final result = jsonDecode(response.body);

    setState(() {
      topTracks =
          result['data'].where((track) => track['preview'] != '').toList();
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

  Future<void> viewondeezer() async {
    final share = widget.shareUrl;
    final Uri url = Uri.parse(share);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _shareTrack() async {
    final String artistName = widget.artistName;
    final String shareUrl = widget.shareUrl;

    try {
      await Share.share(
          'Écoutez cet artiste sur Deezer: $artistName. Cliquez ici pour écouter: $shareUrl');
    } catch (e) {
      throw Exception('Could not share $shareUrl');
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(widget
                  .artistImage), // Remplacez par l'URL de l'image de l'artiste
            ),
            SizedBox(width: 10),
            Expanded(child: Text(widget.artistName)),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/deezer.png',
              width: 24,
              height: 24,
            ),
            onPressed: viewondeezer,
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: _shareTrack,
          ),
        ],
      ),
      body: topTracks.isEmpty
          ? Center(child: CircularProgressIndicator())
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
                            _isPlaying &&
                                    _currentlyPlayingUrl == track['preview']
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
