import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/model/restaurant.dart';
import 'package:food_delivery_app_ui/widget/rating_star.dart';
import 'package:food_delivery_app_ui/widget/recent_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurants() {
    List<Widget> restaurantsList = [];
    for (var restaurant in restaurants) {
      restaurantsList.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 1.0, color: Colors.grey),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  image: AssetImage(restaurant.imageUrl),
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    RatingStars(restaurant.rating),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      restaurant.address,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const Text(
                      '0.2 miles away',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
    return Column(
      children: restaurantsList,
    );
    //   for (var restaurant in restaurants) {
    //     restaurantsList.add(
    //       GestureDetector(
    //         onTap: () => Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (_) => RestaurantScreen(
    //               restaurant: restaurant,
    //             ),
    //           ),
    //         ),
    //         child: Container(
    //           margin:
    //               const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.circular(15.0),
    //             border: Border.all(width: 1.0, color: Colors.grey),
    //           ),
    //           child: Row(
    //             children: [
    //               ClipRRect(
    //                 borderRadius: BorderRadius.circular(15.0),
    //                 child: Hero(
    //                   tag: restaurant.imageUrl,
    //                   child: Image(
    //                     image: AssetImage(
    //                       restaurant.imageUrl,
    //                     ),
    //                     height: 150.0,
    //                     width: 150.0,
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //               ),
    //               Expanded(
    //                 child: Container(
    //                   margin: const EdgeInsets.all(12.0),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                         restaurant.name,
    //                         style: const TextStyle(
    //                           fontSize: 20.0,
    //                           fontWeight: FontWeight.bold,
    //                         ),
    //                         overflow: TextOverflow.ellipsis,
    //                       ),
    //                       const SizedBox(
    //                         height: 8.0,
    //                       ),
    //                       RatingStars(restaurant.rating),
    //                       const SizedBox(
    //                         height: 4.0,
    //                       ),
    //                       Text(
    //                         restaurant.address,
    //                         style: const TextStyle(
    //                           fontSize: 16.0,
    //                           fontWeight: FontWeight.w600,
    //                         ),
    //                         overflow: TextOverflow.ellipsis,
    //                       ),
    //                       const SizedBox(
    //                         height: 4.0,
    //                       ),
    //                       const Text(
    //                         '0.2 miles away',
    //                         style: TextStyle(
    //                           fontSize: 16.0,
    //                           fontWeight: FontWeight.w400,
    //                         ),
    //                         overflow: TextOverflow.ellipsis,
    //                       )
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
  }
  //   return Column(
  //     children: restaurantsList,
  //   );
  // }

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
          const RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Nearby Restaurents',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              _buildRestaurants(),
            ],
          ),
        ],
      ),
    );
  }
}
