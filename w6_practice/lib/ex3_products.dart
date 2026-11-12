import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.
enum Product { Dart, Flutter, Firebase }
String getProductName(Product product) {
  return switch (product) {
    Product.Dart => 'Dart',
    Product.Flutter => 'Flutter',
    Product.Firebase => 'Firebase',
  };
}
String getProductDesc(Product product) {
  return switch (product) {
    Product.Dart => 'The best object language',
    Product.Flutter => 'The best mobile widget library',
    Product.Firebase => 'The best cloud database',
  };
}
String getProductImage(Product product) {
  return switch (product) {
    Product.Dart => 'assets/ex3/dart.png',
    Product.Flutter => 'assets/ex3/flutter.png',
    Product.Firebase => 'assets/ex3/firebase.png',
  };
}
      
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Products'),
        ),
        body: Container(
          
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(product: Product.Dart),
              SizedBox(height: 20),
              ProductCard(product: Product.Flutter),
              SizedBox(height: 20),
              ProductCard(product: Product.Firebase),
            ],
          ),
        ),
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            getProductImage(product),
            width: 50,
            height: 50,
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getProductName(product),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(getProductDesc(product)),
            ],
          ),
        ],
      ),
    );
  }
}
