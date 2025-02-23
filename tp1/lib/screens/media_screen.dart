import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/media.dart';
import '../providers/favorites_provider.dart';
import 'media_detail_screen.dart';

class MediaScreen extends StatefulWidget {
  MediaScreen({super.key});

  @override
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  String _sortOption = 'Alphabetical';
  //Liste des jeux vidéos
  final List<Media> videoGames = [
    Media(
        title: "Zelda Breath of the Wild",
        image: "assets/zeldabreathofthewild.jpg",
        description:
            "Princess Zelda is a major supporting character in The Legend of Zelda: Breath of the Wild and a primary protagonist in its prequel Age of Calamity. She is the current princess of Hyrule and the latest member of the royal family to inherit the sealing powers of the goddess Hylia. ",
        rating: 4.7,
        type: 'Action-adventure'),
    Media(
        title: "Pokemon Arceus",
        image: "assets/pokemonarceus.jpg",
        description:
            "Pokémon Legends: Arceus differs from previous Pokémon games as it takes place in an open world. The game is set in the Sinnoh region, long before it was colonized by humans. The player will still take on the role of a Pokémon trainer, this time tasked with creating the first Pokédex of Sinnoh.",
        rating: 3.9,
        type: 'Action role-playing'),
    Media(
        title: "Hearthstone",
        image: "assets/hearthstone.jpg",
        description:
            "This card game is played with the heroes and monsters from the Warcraft universe. You need to build a 'deck' (card pack) of 30 cards by selecting a champion from several defined classes, each of which has a different effect and thus allows for the customization of the play style.",
        rating: 4.2,
        type: 'Digital collectible card game'),
    Media(
        title: "League of Legends",
        image: "assets/leagueoflegends.jpg",
        description:
            "Team strategy game in which two teams of five champions compete to destroy the opposing base. Choose from over 140 available champions, head into battle, skillfully eliminate your opponents, and take down enemy turrets to achieve victory.",
        rating: 3.0,
        type: 'Multiplayer online battle arena (MOBA)'),
    Media(
        title: "World of Warcraft",
        image: "assets/worldofwarcraft.jpg",
        description:
            "World of Warcraft immerses players in a vibrant fantasy universe filled with diverse races, classes, and lore. Players can team up with others to tackle challenging dungeons, engage in player-versus-player combat, or simply explore the expansive environments. The game continually evolves through expansions and updates, introducing new content and maintaining an active player community.",
        rating: 4.5,
        type: 'Massively multiplayer online role-playing game (MMORPG)'),
    Media(
        title: "Valorant",
        image: "assets/valorant.jpg",
        description: "...",
        rating: 4,
        type: ''),
    Media(
        title: "Overwatch 2",
        image: "assets/overwatch.jpg",
        description: "...",
        rating: 4.8,
        type: ''),
    Media(
        title: "Fall Guys",
        image: "assets/fallguys.jpg",
        description: "...",
        rating: 4.8,
        type: ''),
    Media(
        title: "Minecraft",
        image: "assets/minecraft.jpg",
        description: "...",
        rating: 4.8,
        type: ''),
    Media(
        title: "GTA VI",
        image: "assets/gta6.jpg",
        description: "à venir...",
        rating: 4.8,
        type: ''),
  ];
  //Liste des séries d'animation
  final List<Media> animatedSeries = [
    Media(
        title: "Attack on Titans (SNK)",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Chainsaw man",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Demon Slayer",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Darling in the Franxx",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Your lie in April",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Oshi No Ko",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Frieren",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Goldorak",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Eighty-Six",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
    Media(
        title: "Shimoneta",
        image: "assets/demonslayer.jpg",
        description: "Un anime incroyable",
        rating: 4.7,
        type: ''),
  ];

  //Liste des films d'animation
  final List<Media> animatedFilms = [
    Media(
        title: "Wall-E",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Shrek",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Mario Bros",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Your Name",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "I want to eat your pancreas",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Weathering With You",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Spider Man : Into the Spider Verse",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Up",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Suzume",
        image: "assets/walle.jpeg",
        description:
            "In the 29th century, Earth has become a garbage-strewn wasteland due to rampant consumerism and corporate greed.",
        rating: 4.9,
        type: ''),
    Media(
        title: "Spider Man : Beyond the Spider Verse",
        image: "assets/walle.jpeg",
        description: "arriving in 2025",
        rating: 4.9,
        type: ''),
  ];

  void _sortMedia(List<Media> mediaList) {
    setState(() {
      if (_sortOption == 'Alphabetical') {
        mediaList.sort((a, b) => a.title.compareTo(b.title));
      } else if (_sortOption == 'Rating') {
        mediaList.sort((a, b) => b.rating.compareTo(a.rating));
      }
    });
  }

  Widget buildMediaSection(String title, List<Media> mediaList) {
    List<Media> sortedList = List.from(mediaList);
    _sortMedia(sortedList);

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
          itemCount: sortedList.length,
          itemBuilder: (context, index) {
            final media = sortedList[index];
            return Card(
              margin: EdgeInsets.all(8),
              elevation: 4,
              child: ListTile(
                leading: Image.asset(media.image,
                    width: 50, height: 50, fit: BoxFit.cover),
                title: Text(media.title),
                trailing: IconButton(
                  icon: Icon(
                    Provider.of<FavoritesProvider>(context, listen: false)
                            .isFavorite(media)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Provider.of<FavoritesProvider>(context, listen: false)
                        .toggleFavorite(media);
                    // Forcer la reconstruction de ce widget pour voir la mise à jour
                    setState(() {});
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MediaDetailScreen(media: media)),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medias"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _sortOption = value;
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'Alphabetical',
                child: Text("Sort by alphabetical order : a -> z"),
              ),
              PopupMenuItem(
                value: 'Rating',
                child: Text("Sort by rating : max -> min"),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          buildMediaSection("Video Games", videoGames),
          buildMediaSection("Animated Series", animatedSeries),
          buildMediaSection("Animated Films", animatedFilms),
        ],
      ),
    );
  }
}
