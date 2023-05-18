import 'package:coffee/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavIcon extends StatelessWidget {
  final IconData icon;
  const BottomNavIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(icon,color: kIconColorWhite,);
  }
}
