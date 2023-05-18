import 'package:coffee/constants/colors.dart';
import 'package:coffee/constants/const.dart';
import 'package:coffee/pages/favourite_page/favourite.dart';
import 'package:coffee/pages/home_page/widgets/coffe_tile_widget.dart';
import 'package:coffee/pages/home_page/widgets/coffee%20types.dart';
import 'package:coffee/pages/main_page/main_page.dart';
import 'package:coffee/pages/main_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../notification_page/notification.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[900],
          leading: Icon(
            Icons.menu,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("Find The Best \n Coffee For You",
                    style: GoogleFonts.bebasNeue(fontSize: 50)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: kIconColorWhite,
                      ),
                      hintText: "Find your coffee.."),
                ),
              ),
              kHeight10,
              kHeight10,
              Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTypes(
                        coffeeTypes: "Cappuccino",
                        isSelected: true,
                      ),
                      CoffeeTypes(coffeeTypes: "Milk"),
                      CoffeeTypes(coffeeTypes: "Black Tea"),
                      CoffeeTypes(coffeeTypes: "Coffee"),
                    ],
                  )),
              SizedBox(
                  height: 290,
                  width: double.infinity,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTile(
                          image:
                              "assets/images/clay-banks-_wkd7XBRfU4-unsplash.jpg",
                          coffeeName: "Cappuccino",
                          subtitleCoffeeName: "With oat milk",
                          price: "5.99"),
                      CoffeeTile(
                          image:
                              "assets/images/clay-banks-_wkd7XBRfU4-unsplash.jpg",
                          coffeeName: "Cappuccino",
                          subtitleCoffeeName: "With oat milk",
                          price: "5.99"),
                    ],
                  ))
            ],
          ),
        ));
  }
}
