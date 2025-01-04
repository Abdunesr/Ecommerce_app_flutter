import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/CartProvider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),
      body: cart.cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty"))
          : ListView.builder(
              itemCount: cart.cartItems.length,
              itemBuilder: (context, index) {
                final product = cart.cartItems[index];
                return ListTile(
                  leading: Image.asset(product.image, width: 50, height: 50),
                  title: Text(product.title),
                  subtitle: Text('\$${product.price}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle),
                    onPressed: () => cart.removeFromCart(product),
                  ),
                );
              },
            ),
    );
  }
}
