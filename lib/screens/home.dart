import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';
import 'components/LogoHeader.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map<String, dynamic> trackData = {};
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  Future<void> fetchRandomTrack() async {
    final random = Random();
    int trackId;
    Map<String, dynamic> result;
    do {
      trackId = random.nextInt(1000000);
      final response = await http.get(Uri.parse('https://api.deezer.com/track/$trackId'));
      if (response.statusCode == 200) {
        result = jsonDecode(response.body);
      } else {
        throw Exception('Failed to load track');
      }
    } while (result.containsKey('error') || result['preview'] == '');

    setState(() {
      trackData = result;
      isPlaying = false;
      _audioPlayer.stop();
    });
  }

  void playPausePreview() {
    if (isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play(trackData['preview']);
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchRandomTrack();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
           const LogoHeader(),
            trackData.isEmpty  ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Image.network(
                                    trackData['album']['cover_big'],
                                    height: 200,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(trackData['title'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                  Text(trackData['artist']['name'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.share),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.favorite_border),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(isPlaying
                                        ? Icons.pause_circle_filled
                                        : Icons.play_circle_filled),
                                    onPressed: playPausePreview,
                                    iconSize: 50,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: fetchRandomTrack,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15.0),
                        ),
                        child: const Text(
                          'NOUVELLE DÉCOUVERTE',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

