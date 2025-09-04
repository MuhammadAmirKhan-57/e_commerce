import 'package:e_commerce/model/product_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = -1;

  final items = [
    {
      "color": const Color(0xffF17547),
      "text": "20% OFF DURING THE \nWEEKEND",
      "image": "assets/images/shopping_bag.png",
    },
    {
      "color": const Color(0xff1383F1),
      "text": "20% OFF DURING THE \nWEEKEND",
      "image": "assets/images/shopping_bag.png",
    },
    {
      "color": const Color(0xffE6E5D9),
      "text": "20% OFF DURING THE \nWEEKEND",
      "image": "assets/images/shopping_bag.png",
    },
  ];

  final categoryIcons = [
    "assets/images/watch.png",
    "assets/images/shoes.png",
    "assets/images/bag.png",
    "assets/images/t_shirt.png",
    "assets/images/glass.png",
  ];

  final buttonItems = [
    {
      "color": const Color(0xffF17547),
      "btnText": "Get Now",
      "btnBg": Colors.white,
      "btnTextColor": const Color(0xffF17547),
    },
    {
      "color": const Color(0xff1383F1),
      "btnText": "Get Now",
      "btnBg": Colors.green,
      "btnTextColor": Colors.white,
    },
    {
      "color": const Color(0xffE6E5D9),
      "btnText": "Get Now",
      "btnBg": Colors.lightBlueAccent,
      "btnTextColor": Colors.white,
    },
  ];

  final List<Product> products = [
    Product(
      name: "Redmi Note 4",
      discount: '50% OFF',
      imagePath: "assets/images/p2.png",
      price: 55000,
      salePrice: 45000,
    ),
    Product(
      name: "Apple Watch - series 6",
      discount: '50% OFF',
      imagePath: "assets/images/p1.png",
      price: 55000,
      salePrice: 45000,
    ),
    Product(
      name: "Rolex",
      discount: '50% OFF',
      imagePath: "assets/images/p3.png",
      price: 55000,
      salePrice: 45000,
    ),
    Product(
      name: "Casio",
      discount: '50% OFF',
      imagePath: "assets/images/p4.png",
      price: 55000,
      salePrice: 45000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset('assets/images/menu_icon.png'),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset('assets/images/search_icon.png'),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Hello Fola',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8),
                  Image.asset('assets/images/Vector.png', width: 23),
                ],
              ),
              SizedBox(height: 5),
              Text(
                "Let's Start Shopping",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff878787),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 135,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final color = items[index]["color"] as Color;
                    final text = items[index]["text"] as String;
                    final image = items[index]["image"] as String;

                    return Container(
                      width: 285,
                      margin: const EdgeInsets.only(right: 15),
                      child: Stack(
                        children: [
                          // Background Container
                          Container(
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              text,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Positioned(
                            top: 80,
                            left: 15,
                            child: Container(
                              height: 34,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: buttonItems[index]["btnBg"] as Color,
                              ),
                              child: Center(
                                child: Text(
                                  buttonItems[index]["btnText"] as String,
                                  style: TextStyle(
                                    color:
                                        buttonItems[index]["btnTextColor"]
                                            as Color,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Image on right-center
                          Positioned(
                            right: 0,
                            top: 5,
                            bottom: 0,
                            child: Image.asset(
                              image,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffF17547),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 62,
                child: ListView.builder(
                  itemCount: categoryIcons.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final isSelected = index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // select only this one
                        });
                      },
                      child: Container(
                        width: 64,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: isSelected
                              ? const Color(0xffF17547)
                              : Colors.grey.shade300,
                        ),
                        child: Center(
                          child: Image.asset(
                            categoryIcons[index],
                            height: 28,
                            color: isSelected
                                ? Colors.white
                                : Colors.grey.shade700, // change icon color
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 280,
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(0xffCFCFCF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      products[i].discount,
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite_border,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Image.asset(
                                products[i].imagePath,
                                width: 190,
                                height: 105,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              products[i].name,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rs ${products[i].salePrice}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  "Rs ${products[i].price}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
