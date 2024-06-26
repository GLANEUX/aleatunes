import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/logo_header.dart';
import 'components/errormessage.dart';
import 'package:share_plus/share_plus.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map<String, dynamic> trackData = {};
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  bool errorMessage = false;

  Future<void> fetchRandomTrack() async {
    setState(() {
      errorMessage = false;
      trackData = {};
    });

    final random = Random();
    int trackId;
    Map<String, dynamic> result;

    try {
      do {
        trackId = random.nextInt(1000000);
        final response = await http
            .get(Uri.parse('https://api.deezer.com/track/$trackId'))
            .timeout(const Duration(seconds: 10));

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
    } catch (e) {
      setState(() {
        errorMessage = true;
      });
    }
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

  Future<void> viewondeezer() async {
    final share = trackData['share'];
    final Uri url = Uri.parse(share);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

Future<void> _shareTrack() async {
  final String title = trackData['title'];
  final String artist = trackData['artist']['name'];
  final String shareUrl = trackData['share'];

  try {
    // Partage du lien avec le titre et l'artiste
    await Share.share('Écoute cette musique sur Deezer: $title par $artist. \n \n $shareUrl');
  } catch (e) {
    throw Exception('Could not share $shareUrl');
  }
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoHeader(),
          Expanded(
            child: Center(
              child: trackData.isEmpty && !errorMessage
                  ? const CircularProgressIndicator()
                  : errorMessage
                      ? const Errormessage()
                      : musicview(),
            ),
          ),
          buttonFind(),
       
        ],
      ),
    );
  }

  Padding buttonFind() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: fetchRandomTrack,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        ),
        child: const Text(
          'NOUVELLE DÉCOUVERTE',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Padding musicview() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                  Text(trackData['title']),
                  Text(trackData['artist']['name']),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/deezer.png', // Chemin de votre image dans les assets
                          width: 24, // Largeur souhaitée de l'image
                          height: 24, // Hauteur souhaitée de l'image
                        ),
                        onPressed: viewondeezer,
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {
                          _shareTrack(); // Utilisation de la méthode _shareTrack pour le bouton de partage par défaut
                        },
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      isPlaying
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_filled,
                    ),
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
    );
  }
}
