import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ArtistSongsPage.dart';

class ArtistePage extends StatefulWidget {
  const ArtistePage({super.key});

  @override
  _ArtistePageState createState() => _ArtistePageState();
}

class _ArtistePageState extends State<ArtistePage> {
  List<dynamic> artists = [];
  final Random random = Random();
  bool isLoading = true;

Future<void> fetchRandomArtists() async {
  setState(() {
    isLoading = true;
  });

  List<dynamic> newArtists = [];
  while (newArtists.length < 6) {
    try {
      final artistId = random.nextInt(1000000);
      final response = await http.get(Uri.parse('https://api.deezer.com/artist/$artistId'));
      final result = jsonDecode(response.body);

      if (!result.containsKey('error') && result['picture_medium'] != null && result['nb_album'] > 0) {
        // Vérifiez si l'artiste a des pistes valides
        final tracksResponse = await http.get(Uri.parse('https://api.deezer.com/artist/${result['id']}/top'));
        final tracksResult = jsonDecode(tracksResponse.body);

        if (tracksResult['data'] != null && tracksResult['data'].isNotEmpty) {
          newArtists.add(result);
          print('Fetched artist with ID: ${result['id']}');
        }
      }
    } catch (e) {
      // Handle exceptions, e.g., network issues
      print('Error fetching artist: $e');
    }
  }

  setState(() {
    artists = newArtists;
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
      appBar: AppBar(
        title: const Text('Random Artists'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
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
                              ),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(artist['picture_medium'], height: 80),
                              const SizedBox(height: 10),
                              Text(
                                artist['name'],
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: fetchRandomArtists,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  ),
                  child: const Text(
                    'Regenerate Artists',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
    );
  }
}
