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
import '../app_styles.dart';

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
      _audioPlayer.play(UrlSource(trackData['preview']));
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
      await Share.share(
          'Écoute cette musique sur Deezer: $title par $artist. \n \n $shareUrl');
    } catch (e) {
      throw Exception('Could not share $shareUrl');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchRandomTrack();
    _audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
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
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: fetchRandomTrack,
        style: AppStyles.elevatedButtonTheme,
        
        child: const Text(
          'NOUVELLE DÉCOUVERTE',
          style: AppStyles.buttontext,
        ),
      ),
    );
  }

  Padding musicview() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    trackData['album']['cover_big'],
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                    color: Colors.white.withOpacity(0.1),
                    colorBlendMode: BlendMode.lighten,
                  ),
                  IconButton(
                    icon: Icon(
                      isPlaying
                          ? Icons.pause_rounded
                          : Icons.play_arrow_rounded,
                      color: Colors.purple.withOpacity(0.8),
                    ),
                    onPressed: playPausePreview,
                    iconSize: 150,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            trackData['title'],
            style: AppStyles.headline1,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          Text(
            trackData['artist']['name'],
            style: AppStyles.headline2,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyles.primaryColor,
                ),
                child: IconButton(
                  icon: Image.asset(
                    'assets/deezer.png',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: viewondeezer,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyles.primaryColor,
                ),
                child: IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: _shareTrack,
                  color: const Color.fromARGB(255, 152, 77, 202),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
