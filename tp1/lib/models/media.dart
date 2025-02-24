class Media {
  final String title;
  final String image;
  final String description;
  final double rating;
  final String type;

  Media({
    required this.title,
    required this.image,
    required this.description,
    required this.rating,
    required this.type,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Media &&
        other.title == title &&
        other.image == image &&
        other.description == description &&
        other.rating == rating &&
        other.type == type;
  }

  @override
  int get hashCode =>
      title.hashCode ^
      image.hashCode ^
      description.hashCode ^
      rating.hashCode ^
      type.hashCode;
}
