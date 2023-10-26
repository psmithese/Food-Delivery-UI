import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          iconSize: 30.0,
          icon: const Icon(Icons.account_circle),
        ),
        title: const Text('Food Delivery'),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Cart (${currentUser.cart.length})',
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                hintText: 'Search Food or Restaurants',
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 0.8),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.8, color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
