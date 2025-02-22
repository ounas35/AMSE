import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/media.dart';
import '../providers/favorites_provider.dart';
import 'media_detail_screen.dart'; // Importing the detail screen

class MediaScreen extends StatelessWidget {
  final List<Media> videoGames = [
    Media(
        title: "Zelda Breath of the Wild",
        image: "assets/zelda.jpeg",
        description: "Aventure épique",
        rating: 4.8),
    // Add more video games here if necessary
  ];

  final List<Media> animationSeries = [
    Media(
        title: "Demon Slayer",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    // Add more series here if necessary
  ];

  final List<Media> animationMovies = [
    Media(
        title: "Wall-E",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    // Add more movies here if necessary
  ];

  MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Medias")),
      body: ListView(
        children: [
          _buildMediaSection("Video-Games", videoGames, context),
          _buildMediaSection("Animation's Series", animationSeries, context),
          _buildMediaSection("Animation's Movies", animationMovies, context),
        ],
      ),
    );
  }

  Widget _buildMediaSection(
      String title, List<Media> mediaList, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: mediaList.length,
          itemBuilder: (context, index) {
            final media = mediaList[index];
            return Card(
              margin: EdgeInsets.all(8),
              elevation: 4,
              child: ListTile(
                leading: Image.asset(media.image,
                    width: 50, height: 50, fit: BoxFit.cover),
                title: Text(media.title),
                trailing: Consumer<FavoritesProvider>(
                  builder: (context, favoritesProvider, child) {
                    bool isFav = favoritesProvider.isFavorite(media);
                    return IconButton(
                      icon: Icon(isFav ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red),
                      onPressed: () {
                        favoritesProvider
                            .toggleFavorite(media); // Toggle favorite status
                      },
                    );
                  },
                ),
                onTap: () {
                  // Navigate to the media detail screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MediaDetailScreen(media: media),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
