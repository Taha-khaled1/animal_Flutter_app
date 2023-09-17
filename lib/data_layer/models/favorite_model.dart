class FavoritModel {
  final int id;
  final double price;
  final String title;
  final String image, titleEn, des;

  FavoritModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.titleEn,
    required this.des,
  });
}
