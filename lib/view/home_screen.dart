import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final colors = [
      Color(0xffF17547),
      Color(0xff1383F1),
      Color(0xffE6E5D9),
    ]; 
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
              SizedBox(height: 10),
              SizedBox(
                height: 130, // container height
                child: ListView.builder(
                  itemCount: colors.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 285, // container width
                      margin: const EdgeInsets.only(right: 15), // space between
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.circular(15),
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
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
