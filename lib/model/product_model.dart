class Product {
  final String name;
  final String discount;
  final String imagePath;
  final double price;
  final double salePrice;
  bool isFavorite;

  Product({
    required this.name,
    required this.discount,
    required this.imagePath,
    required this.price,
    required this.salePrice,
    this.isFavorite = false,
  });
}