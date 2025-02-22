import 'package:flutter/material.dart';
import '../models/media.dart';

class FavoritesProvider extends ChangeNotifier {
  // List to store favorite media
  final List<Media> _favoriteMedia = [];

  List<Media> get favoriteMedia => _favoriteMedia;

  // Add or remove media from favorites
  void toggleFavorite(Media media) {
    if (_favoriteMedia.contains(media)) {
      _favoriteMedia.remove(media);
    } else {
      _favoriteMedia.add(media);
    }
    notifyListeners(); // Notify listeners when the favorite list changes
  }

  bool isFavorite(Media media) {
    return _favoriteMedia.contains(media);
  }
}
