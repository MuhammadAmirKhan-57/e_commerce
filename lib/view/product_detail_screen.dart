import 'package:flutter/material.dart';
import 'package:e_commerce/model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/bg.png', width: 474, height: 450,),
          Image.asset('assets/images/bg_1.png', width: 350, height: 350),
        ],
      ),
    );
  }
}
