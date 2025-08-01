import 'package:e_commerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(product.image, height: 200, fit: BoxFit.cover),
                    const SizedBox(height: 16),
                    Text(
                      product.name,
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹${product.price}",
                      style: const TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    const SizedBox(height: 16),
                    // const Text(
                    //  'By Libaas', textAlign: TextAlign.center,
                    //   style: TextStyle(fontSize: 16),
                    // ),
            
                  ],
                ),
            
              ),
            
            ),
             Text(
                     'By Libaas', textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    Text(
                     'Ratings: 5 star', textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
          ],
          
        
        ),
      ),

    );
  }
}
