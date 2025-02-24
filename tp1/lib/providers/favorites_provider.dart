import 'package:flutter/material.dart';
import '../models/media.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Media> _favoriteMedia = [];

  List<Media> get favoriteMedia => _favoriteMedia;
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
