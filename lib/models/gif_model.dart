class Gif {
  String title;
  String images;

  Gif({
    required this.title,
    required this.images,
  });

  @override
  String toString() {
    return 'Gif(title: $title, images: $images)';
  }
}
