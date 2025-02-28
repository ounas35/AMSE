import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/media.dart';
import '../providers/favorites_provider.dart';
import 'media_detail_screen.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  String _sortOption = 'Alphabetical';
  final List<Media> videoGames = [
    Media(
        title: "Zelda Breath of the Wild",
        image: "assets/zeldabreathofthewild.jpg",
        description:
            "An open-world adventure where Link explores Hyrule, solves puzzles, and battles foes to save Princess Zelda.",
        rating: 4.7,
        type: 'Action-adventure'),
    Media(
        title: "Pokemon Arceus",
        image: "assets/pokemonarceus.jpg",
        description:
            "A Pokémon RPG set in ancient Sinnoh, where players explore an open world and complete the first Pokédex.",
        rating: 3.9,
        type: 'Action role-playing'),
    Media(
        title: "Hearthstone",
        image: "assets/hearthstone.jpg",
        description:
            "A digital card game set in the Warcraft universe, where players build decks and battle opponents.",
        rating: 4.2,
        type: 'Digital collectible card game'),
    Media(
        title: "League of Legends",
        image: "assets/leagueoflegends.jpg",
        description:
            "A MOBA where two teams of five champions battle to destroy the enemy base.",
        rating: 3.0,
        type: 'Multiplayer online battle arena (MOBA)'),
    Media(
        title: "World of Warcraft",
        image: "assets/worldofwarcraft.jpg",
        description:
            "An MMORPG where players explore Azeroth, complete quests, and engage in PvE and PvP battles.",
        rating: 4.5,
        type: 'MMORPG'),
    Media(
        title: "Valorant",
        image: "assets/valorant.jpg",
        description:
            "A tactical FPS where two teams compete using precise shooting and unique agent abilities.",
        rating: 4.0,
        type: 'Hero shooter, Tactical shooter'),
    Media(
        title: "Overwatch 2",
        image: "assets/overwatch.jpg",
        description:
            "A team-based FPS where players use heroes with unique abilities to secure objectives.",
        rating: 2.5,
        type: 'FPS, Hero shooter'),
    Media(
        title: "Fall Guys",
        image: "assets/fallguys.jpg",
        description:
            "A chaotic battle royale where 60 players compete in obstacle course mini-games.",
        rating: 3.5,
        type: 'Battle royale, Platform'),
    Media(
        title: "Minecraft",
        image: "assets/minecraft.jpg",
        description:
            "A sandbox game where players build, explore, and survive in a blocky world.",
        rating: 4.5,
        type: 'Sandbox, Survival'),
    Media(
        title: "Grand Theft Auto VI",
        image: "assets/gta6.jpg",
        description: "Coming soon...",
        rating: 0.0,
        type: 'Action-adventure'),
  ];
  final List<Media> animatedSeries = [
    Media(
        title: "Attack on Titan",
        image: "assets/attackontitan.jpg",
        description:
            "In a world where humanity lives behind immense walls to protect themselves from Titans, Eren Yeager vows to eliminate them after witnessing his mother's death.",
        rating: 4.6,
        type: 'Action, Dark fantasy, Post-apocalyptic'),
    Media(
        title: "Chainsaw Man",
        image: "assets/chainsawman.jpg",
        description:
            "Denji, a young devil hunter struggling with debt, merges with his pet chainsaw demon Pochita after a tragic betrayal, becoming Chainsaw Man.",
        rating: 4.3,
        type: 'Action, Comedy horror, Dark fantasy'),
    Media(
        title: "Demon Slayer",
        image: "assets/demonslayer.jpg",
        description:
            "Tanjiro Kamado embarks on a journey to become a Demon Slayer and cure his sister Nezuko, who has been transformed into a demon.",
        rating: 4.3,
        type: 'Adventure, Dark fantasy, Martial arts'),
    Media(
        title: "Darling in the Franxx",
        image: "assets/darlinginthefranxx.jpg",
        description:
            "In a post-apocalyptic world, children pilot mechas called Franxx to defend humanity. Hiro, an unremarkable pilot, meets the mysterious Zero Two.",
        rating: 3.6,
        type: 'Mecha, Romance, Sci-fi'),
    Media(
        title: "Your Lie in April",
        image: "assets/yourlieinapril.jpg",
        description:
            "A piano prodigy who lost his ability to hear music finds new inspiration when he meets a passionate violinist.",
        rating: 4.3,
        type: 'Romance, Drama, Music'),
    Media(
        title: "Oshi No Ko",
        image: "assets/oshinoko.jpg",
        description:
            "A reincarnated doctor follows the life of an idol and navigates the dark truths of the entertainment industry.",
        rating: 4.0,
        type: 'Drama, Mystery, Supernatural'),
    Media(
        title: "Frieren",
        image: "assets/frieren.jpg",
        description:
            "An elven mage embarks on a journey to understand human emotions long after her heroic adventures have ended.",
        rating: 4.1,
        type: 'Fantasy, Adventure, Drama'),
    Media(
        title: "Goldorak",
        image: "assets/goldorak.jpg",
        description:
            "A giant robot anime following Actarus, a prince from a distant planet, who fights to defend Earth.",
        rating: 3.9,
        type: 'Mecha, Sci-fi, Action'),
    Media(
        title: "Eighty-Six",
        image: "assets/eightysix.jpg",
        description:
            "A war story about young soldiers operating unmanned drones, uncovering the dark truths behind their existence.",
        rating: 4.1,
        type: 'Mecha, Drama, War'),
    Media(
        title: "Shimoneta",
        image: "assets/shimoneta.jpg",
        description:
            "In a world where dirty jokes are illegal, a rebellious group fights for freedom of expression.",
        rating: 3.5,
        type: 'Comedy, Ecchi, Dystopian'),
  ];
  final List<Media> animatedFilms = [
    Media(
        title: "Wall-E",
        image: "assets/walle.jpeg",
        description:
            "A small waste-collecting robot discovers the beauty of life and love in a dystopian future where Earth is abandoned.",
        rating: 4.2,
        type: 'Sci-fi, Adventure, Romance'),
    Media(
        title: "Shrek",
        image: "assets/shrek.jpg",
        description:
            "A grumpy ogre's life is turned upside down when he embarks on a journey to rescue a princess.",
        rating: 4.0,
        type: 'Comedy, Fantasy, Adventure'),
    Media(
        title: "The Super Mario Bros. Movie",
        image: "assets/mariobros.jpg",
        description:
            "Mario and Luigi embark on a high-stakes adventure to save the Mushroom Kingdom from Bowser.",
        rating: 3.6,
        type: 'Action, Comedy, Adventure'),
    Media(
        title: "Your Name",
        image: "assets/yourname.jpg",
        description:
            "Two teenagers mysteriously swap bodies and form a deep connection across time and space.",
        rating: 4.2,
        type: 'Romance, Drama, Fantasy'),
    Media(
        title: "I Want to Eat Your Pancreas",
        image: "assets/iwanttoeatyourpancreas.jpg",
        description:
            "A quiet boy forms an unexpected bond with a terminally ill girl who lives life to the fullest.",
        rating: 4.0,
        type: 'Drama, Romance, Slice of Life'),
    Media(
        title: "Weathering With You",
        image: "assets/weatheringwithyou.jpg",
        description:
            "A runaway boy meets a girl with the ability to control the weather, leading to a story of love and sacrifice.",
        rating: 3.8,
        type: 'Fantasy, Romance, Drama'),
    Media(
        title: "Spider-Man: Into the Spider-Verse",
        image: "assets/spidermanintothespiderverse.jpg",
        description:
            "Miles Morales becomes Spider-Man and meets alternate versions of himself from different dimensions.",
        rating: 4.2,
        type: 'Action, Sci-fi, Superhero'),
    Media(
        title: "Up",
        image: "assets/up.jpg",
        description:
            "A widowed old man fulfills his late wife's dream by flying his house to South America with a young stowaway.",
        rating: 4.2,
        type: 'Adventure, Comedy, Drama'),
    Media(
        title: "Suzume",
        image: "assets/suzume.jpeg",
        description:
            "A high school girl embarks on a mysterious journey to close supernatural doors causing disasters across Japan.",
        rating: 4.6,
        type: 'Fantasy, Adventure, Drama'),
    Media(
        title: "Spider-Man: Beyond the Spider-Verse",
        image: "assets/spidermanbeyondthespiderverse.jpg",
        description: "Coming soon...",
        rating: 0.0,
        type: 'Action, Sci-fi, Superhero'),
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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        actions: [
          PopupMenuButton<String>(
            tooltip: 'Sort by',
            onSelected: (value) {
              setState(() {
                _sortOption = value;
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'Alphabetical',
                child: Text("alphabetical order (from a to z)"),
              ),
              PopupMenuItem(
                value: 'Rating',
                child: Text("rating : (from 5 to 0)"),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          buildMediaSection("Video Games", videoGames),
          SizedBox(height: 20),
          buildMediaSection("Animated Series", animatedSeries),
          SizedBox(height: 20),
          buildMediaSection("Animated Films", animatedFilms),
        ],
      ),
    );
  }
}
