import 'package:flutter/material.dart';
import 'package:e_commerce/model/product_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
   final PageController _pageController = PageController();

  final List<String> productImages = [
    'assets/images/bg_1.png',
    'assets/images/bg_1.png',
    'assets/images/bg_1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/bg.png', width: 474, height: 450,),
               Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 350,
                      height: 310,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: productImages.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            widget.product.imagePath,
                             fit: BoxFit.contain,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: productImages.length,
                      effect: ScrollingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 9,
                         dotColor: Colors.white,
                        activeDotColor: const Color(0xffF17547), 
                      ),
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(widget.product.name,  
            style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),),
          ),

        ],
      ),
    );
  }
}
