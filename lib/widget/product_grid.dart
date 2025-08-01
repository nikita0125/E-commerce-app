import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/screens/product_details_page.dart';
import 'package:e_commerce_app/widget/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final products = productProvider.products;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final Product product = products[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ProductDetailPage(product: product),
            ),
          ),
          child: Card(
            color: const Color.fromARGB(154, 231, 249, 255),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(product.image, height: 100, fit: BoxFit.cover),
                ),
                const SizedBox(height: 8),
                Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text("₹${product.price}", style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                const SizedBox(height: 6),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 196, 216, 255)),
                  ),

                  onPressed: () {
                    productProvider.addToCart(product);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("${product.name} added to cart")),
                    );
                  },
                  child: const Text("Add to Cart",style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
