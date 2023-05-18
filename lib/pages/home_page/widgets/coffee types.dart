import 'package:coffee/pages/favourite_page/favourite.dart';
import 'package:coffee/pages/home_page/home_page.dart';
import 'package:coffee/pages/notification_page/notification.dart';
import 'package:flutter/material.dart';

class CoffeeTypes extends StatelessWidget {
  final String coffeeTypes;
  final bool isSelected;
  CoffeeTypes({
    Key? key,
    required this.coffeeTypes,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14),
        child: isSelected
            ? Text(
                coffeeTypes,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              )
            : Text(
                coffeeTypes,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ));
  }
}
