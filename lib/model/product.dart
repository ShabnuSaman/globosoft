class Product {
  final String id;
  final String name;
  final String price;
  final String thumbnailUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.thumbnailUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      thumbnailUrl: 'https://mansharcart.com/image/' + json['thumb'],
    );
  }
}
