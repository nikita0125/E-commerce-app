import 'package:e_commerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = mockProducts;
  final List<Product> _cart = [];

  List<Product> get products => _products;
  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  double get totalPrice =>
      _cart.fold(0, (sum, item) => sum + item.price);
}
