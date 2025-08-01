

import 'package:e_commerce_app/screens/cart.dart';
import 'package:e_commerce_app/widget/banner.dart';
import 'package:e_commerce_app/widget/category_list.dart';
import 'package:e_commerce_app/widget/product_grid.dart';
import 'package:e_commerce_app/widget/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 176, 255, 255),
      
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(166, 57, 159, 157),
        
        title: const Text("E-Commerce App"),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CartPage()
                  ),
                ),
              ),
              if (cartProvider.cart.isNotEmpty)
                Positioned(
                  right: 6,
                  top: 6,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      "${cartProvider.cart.length}",
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerSlider(),
            const SizedBox(height: 16),
            const Text("Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            CategoryList(),
            const SizedBox(height: 16),
            const Text("Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
