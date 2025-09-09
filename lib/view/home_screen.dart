import 'package:e_commerce/view/home_content_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/view/cart_screen.dart';
import 'package:e_commerce/view/profile_screen.dart';
import 'package:e_commerce/view/favorite_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectBottomIndex = 0;

  late final List<Widget> screenList = [
    const HomeContentScreen(), 
    const FavoriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectBottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectBottomIndex,
        onTap: (index) {
          setState(() {
            selectBottomIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
