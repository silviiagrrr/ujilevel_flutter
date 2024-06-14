import 'package:flutter/material.dart';

class NewArrivalsWidget extends StatefulWidget {
  @override
  _NewArrivalsWidgetState createState() => _NewArrivalsWidgetState();
}

class _NewArrivalsWidgetState extends State<NewArrivalsWidget> {
  List<Product> products = [
    Product(name: 'Product 1', price: 19.99, imageUrl: 'images/1.jpg'),
    Product(name: 'Product 2', price: 29.99, imageUrl: 'images/2.jpg'),
    Product(name: 'Product 3', price: 39.99, imageUrl: 'images/3.jpg'),
    // Tambahkan lebih banyak produk sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];  // Menyederhanakan akses ke produk
          return Card(
            child: ListTile(
              leading: Image.asset(product.imageUrl, width: 50, height: 50),
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}
