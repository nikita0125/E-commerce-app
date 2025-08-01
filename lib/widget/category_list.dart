import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = [
    "Suits",
    "Gen-z",
    "Sarees",
    "Jeans",
    "Dress"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 0.1),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 237, 242, 237),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Icon(Icons.celebration_sharp, size: 30, color: Color.fromARGB(255, 40, 160, 207)),
                const SizedBox(height: 5),
                Text(categories[index]),
              ],
            ),
          );
        },
      ),
    );
  }
}
