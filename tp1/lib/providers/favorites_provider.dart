import 'package:flutter/material.dart';
import '../models/media.dart';

class FavoritesProvider extends ChangeNotifier {
  // Liste qui récupère les médias favoris
  final List<Media> _favoriteMedia = [];

  List<Media> get favoriteMedia => _favoriteMedia;

  // Ajoute et enlève les médias des favoris
  void toggleFavorite(Media media) {
    if (_favoriteMedia.contains(media)) {
      _favoriteMedia.remove(media);
    } else {
      _favoriteMedia.add(media);
    }
    notifyListeners();
  }

  bool isFavorite(Media media) {
    return _favoriteMedia.contains(media);
  }
}
