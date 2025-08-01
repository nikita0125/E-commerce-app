

class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

final List<Product> mockProducts = [
  Product(
    name: "Jumpsuit",
    image:'assets/images/jumpsuit.png',
    price: 1600,
  ),
  Product(
    name: "Cargo jeans",
    image: 'assets/images/cargo.png',
    price: 600,
  ),
  Product(
    name: "Suit-set",
    image: "assets/images/suit.png",
    price: 2000,
  ),
  Product(
    name: "Orgenza Saree",
    image:'assets/images/orgenza.png',
    price: 3000,
  ),
  Product(
    name: "Bodycon-dress",
    image:'assets/images/body.png',
    price: 400,
  ),
];
