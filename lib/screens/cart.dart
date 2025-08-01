import 'package:e_commerce_app/widget/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 255, 255),
       appBar: AppBar(
        backgroundColor: const Color.fromARGB(166, 57, 159, 157),
        title: const Text("Your Cart")),
      body: cartProvider.cart.isEmpty
          ? const Center(child: Text("Your cart is empty"))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProvider.cart.length,
                    itemBuilder: (context, index) {
                      final product = cartProvider.cart[index];
                      return ListTile(
                        leading: Image.asset(product.image, width: 50),
                        title: Text(product.name),
                        subtitle: Text("₹${product.price}"),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.red,
                          ),
                          onPressed: () => cartProvider.removeFromCart(product),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  
                  padding: const EdgeInsets.all(16),
                  color: const Color.fromARGB(255, 187, 255, 252),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total: ₹${cartProvider.totalPrice}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 196, 169, 160),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Checkout",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
