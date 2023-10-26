import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/model/restaurant.dart';

class RestuarantScreen extends StatefulWidget {
  final Restaurant restaurant;

  const RestuarantScreen({super.key, required this.restaurant});

  @override
  State<RestuarantScreen> createState() => _RestuarantScreenState();
}

class _RestuarantScreenState extends State<RestuarantScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
