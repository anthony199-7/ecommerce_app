class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });
}

final List<Product> products = [
  const Product(
    name: 'Shoes',
    category: 'Footwear',
    imageUrl: 'lib/assets/images/shoe.jpg',
    description: 'This is a description product 3',
    price: 69.90,
    oldPrice: 189.00,
  ),
  const Product(
    name: 'Puma',
    category: 'Footwear',
    imageUrl: 'lib/assets/images/shoes2.jpg',
    description: 'This is a description product 4',
    price: 69.90,
    oldPrice: 189.00,
  ),
  const Product(
    name: 'Jordan shoes',
    category: 'Footware',
    imageUrl: 'lib/assets/images/shoe2.jpg',
    description: 'This is a description product 2',
    isFavorite: true,
    price: 69.90,
    oldPrice: 189.00,
  ),
  const Product(
    name: 'Laptop',
    category: 'Eletronics',
    imageUrl: 'lib/assets/images/laptop.jpg',
    description: 'This is a description product 1',
    price: 69.90,
    oldPrice: 189.00,
  ),
];
