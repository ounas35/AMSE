import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorites_provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<FavoritesProvider>(context).favoriteMedia;

    return Scaffold(
      appBar: AppBar(title: Text("Liked Medias")),
      body: favorites.isEmpty
          ? Center(
              child: Text("No liked media yet!",
                  style: TextStyle(
                    fontSize: 20,
                  )))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final media = favorites[index];
                return ListTile(
                  leading: Image.asset(media.image,
                      width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(media.title),
                );
              },
            ),
    );
  }
}
