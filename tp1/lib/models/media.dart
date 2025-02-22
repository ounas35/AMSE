//Classe avec les différentes informations d'un média
class Media {
  final String title;
  final String image;
  final String description;
  final double rating;
  bool isFavorite;

  Media({
    required this.title,
    required this.image,
    required this.description,
    required this.rating,
    this.isFavorite = false,
  });
}
