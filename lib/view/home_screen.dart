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
                                        buttonItems[index]["btnTextColor"] as Color,
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
              SizedBox(height: 25),
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
            ],
          ),
        ),
      ),
    );
  }
}
