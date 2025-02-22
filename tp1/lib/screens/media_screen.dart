import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/media.dart';
import '../providers/favorites_provider.dart';
import 'media_detail_screen.dart';

class MediaScreen extends StatelessWidget {
  //Liste des jeux vidéos
  final List<Media> videoGames = [
    Media(
        title: "Zelda Breath of the Wild",
        image: "assets/zelda.jpeg",
        description: "Aventure épique",
        rating: 3),
    Media(
        title: "Pokemon Arceus",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 2),
    Media(
        title: "Hearthstone",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 4.8),
    Media(
        title: "League of Legends",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 4.8),
    Media(
        title: "World of Warcraft",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 4.8),
    Media(
        title: "Valorant",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 4.8),
    Media(
        title: "Overwatch",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 4.8),
    Media(
        title: "Fall Guys",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 4.8),
    Media(
        title: "Minecraft",
        image: "assets/zelda.jpeg",
        description: "...",
        rating: 4.8),
    Media(
        title: "GTA VI",
        image: "assets/zelda.jpeg",
        description: "à venir...",
        rating: 4.8),
  ];
  //Liste des séries d'animation
  final List<Media> animationSeries = [
    Media(
        title: "Attack on Titans (SNK)",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Chainsaw man",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Demon Slayer",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Darling in the Franxx",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Your lie in April",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Oshi No Ko",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Frieren",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Goldorak",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Eighty-Six",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
    Media(
        title: "Shimoneta",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7),
  ];

  //Liste des films d'animation
  final List<Media> animationMovies = [
    Media(
        title: "Wall-E",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Shrek",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Mario Bros",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Your Name",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "I want to eat your pancreas",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Weathering With You",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Spider Man : Into the Spider Verse",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Up",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Suzume",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9),
    Media(
        title: "Spider Man : Beyond the Spider Verse",
        image: "assets/walle.jpeg",
        description: "arriving in 2025",
        rating: 4.9),
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
                        favoritesProvider.toggleFavorite(media);
                      },
                    );
                  },
                ),
                onTap: () {
                  // Pour ouvrir un onglet avec le détails de chaque média
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
