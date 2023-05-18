import 'package:coffee/pages/main_page/widgets/bottom_Nav_icon.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangedValueNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangedValueNotifier,
        builder: (context, int newIndex, _) => BottomNavigationBar(
                currentIndex: newIndex,
                onTap: (index) {
                  indexChangedValueNotifier.value = index;
                },
                items: [
                  BottomNavigationBarItem(
                      icon: BottomNavIcon(icon: Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: BottomNavIcon(icon: Icons.favorite),
                      label: "Favourite"),
                  BottomNavigationBarItem(
                      icon: BottomNavIcon(icon: Icons.notification_important),
                      label: "Notification"),
                ]));
  }
}
