import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ArtistSongsPage.dart';
import '../components/errormessage.dart';
import '../components/logo_header.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtistePage extends StatefulWidget {
  const ArtistePage({super.key});

  @override
  _ArtistePageState createState() => _ArtistePageState();
}

class _ArtistePageState extends State<ArtistePage> {
  
  List<dynamic> artists = [];
  final Random random = Random();
  bool isLoading = true;
  bool errorMessage = false;

  Future<void> fetchRandomArtists() async {
    setState(() {
      isLoading = true;
      errorMessage = false;
    });

    List<dynamic> newArtists = [];
    while (newArtists.length < 4) {
      try {
        final artistId = random.nextInt(1000000);
        final response = await http
            .get(Uri.parse('https://api.deezer.com/artist/$artistId'))
            .timeout(const Duration(seconds: 10));
        final result = jsonDecode(response.body);

        if (!result.containsKey('error') &&
            result['picture_medium'] != null &&
            result['nb_album'] > 0) {
          // Check if the artist has valid tracks
          final tracksResponse = await http
              .get(Uri.parse(
                  'https://api.deezer.com/artist/${result['id']}/top'))
              .timeout(const Duration(seconds: 10));
          final tracksResult = jsonDecode(tracksResponse.body);

          if (tracksResult['data'] != null && tracksResult['data'].isNotEmpty) {
            newArtists.add(result);
            print('Fetched artist with ID: ${result['id']}');
          }
        }
      } catch (e) {
        print('Error fetching artist: $e');
        setState(() {
          errorMessage = true;
          isLoading = false;
        });
        return;
      }
    }

    setState(() {
      if (newArtists.isEmpty) {
        errorMessage = true;
      } else {
        artists = newArtists;
      }
      isLoading = false;
    });
  }

                   


  @override
  void initState() {
    super.initState();
    fetchRandomArtists();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: artisteview,
      ),
    );
  }

  List<Widget> get artisteview {
    return [
      Expanded(
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : errorMessage
                  ? const Errormessage()
                  : musicview(),
        ),
      ),
      buttonfind(),
    ];
  }

  Padding buttonfind() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: fetchRandomArtists,
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
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 5,
        ),
        itemCount: artists.length,
        itemBuilder: (context, index) {
          final artist = artists[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArtistSongsPage(
                    artistId: artist['id'],
                    artistName: artist['name'],
                    shareUrl: artist['share'], 
                    artistImage: artist['picture_medium'],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    child: Image.network(
                      artist['picture_medium'],
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            artist['name'] ,
                            maxLines: 2,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            textAlign: TextAlign.center,
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
