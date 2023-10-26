import 'package:food_delivery_app_ui/model/food.dart';
import 'package:food_delivery_app_ui/model/restaurant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    required this.date,
    required this.restaurant,
    required this.food,
    required this.quantity,
  });
}
