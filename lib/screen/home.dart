import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';
import '../app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
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
      final response =
          await http.get(Uri.parse('https://api.deezer.com/track/$trackId'));
      result = jsonDecode(response.body);
    } while (result.containsKey('error') || result['preview'] == '');

    setState(() {
      trackData = result;
      isPlaying = false;
      _audioPlayer.stop(); // Stop previous audio if any
    });
  }

  void playPausePreview() {
    if (isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play(UrlSource(trackData['preview']));
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
    return Scaffold(
      body: Column(
        children: [
          header(),
          trackData.isEmpty
              ? const Center(child: CircularProgressIndicator())
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
                            color: AppColors.primaryColor,
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
                                          .headline6),
                                  Text(trackData['artist']['name'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2),
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

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              'assets/aleatunes.png',
              width: 20,
            ),
            const SizedBox(
                width: 10), // Ajouter un espace entre l'image et le texte
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligner le texte à gauche
                children: [
                  Text(
                    'fdsggsdfgfdkmj  mkldfsjg jkf qlc i dgkfjog  kjodg ksdfpj nezj',
                    style: Theme.of(context).textTheme.headline6,
                    softWrap: true,
                  ),
                  Text(
                    'fdsggsdfgfdkmj  mkldfsjg jkf qlc i dgkfjog  kjodg ksdfpj nezj',
                    style: Theme.of(context).textTheme.headline6,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
