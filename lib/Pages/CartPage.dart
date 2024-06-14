import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> cartItems = [
    CartItem(id: '1', title: 'Gelang', quantity: 2, price: 50000.0, imageUrl: 'images/3.jpg'),
    CartItem(id: '2', title: 'Jepitan', quantity: 1, price: 150000.0, imageUrl: 'images/4.jpg'),
    CartItem(id: '3', title: 'Bando', quantity: 1, price: 200000.0, imageUrl: 'images/6.jpg'),
  ];

  void _incrementQuantity(int index) {
    setState(() {
      cartItems[index].quantity += 1;
    });
  }

  void _decrementQuantity(int index) {
    if (cartItems[index].quantity > 1) {
      setState(() {
        cartItems[index].quantity -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(item.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(item.title),
              subtitle: Text('Jumlah: ${item.quantity} - Rp${(item.price * item.quantity).toStringAsFixed(2)}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () => _decrementQuantity(index),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline),
                    onPressed: () => _incrementQuantity(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CartItem {
  String id;
  String title;
  int quantity;
  double price;
  String imageUrl;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
    required this.imageUrl,
  });
}
