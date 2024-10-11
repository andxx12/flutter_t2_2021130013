import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems = []; // Add cart logic later

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return ListTile(
            leading: Image.asset(product.imageUrl, width: 50),
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
