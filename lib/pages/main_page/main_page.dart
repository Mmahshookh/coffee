import 'package:coffee/pages/favourite_page/favourite.dart';
import 'package:coffee/pages/home_page/home_page.dart';
import 'package:coffee/pages/main_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:coffee/pages/notification_page/notification.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final _pages = [HomePage(), FavouritePage(), NotificationPage()];
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangedValueNotifier,
        builder: (context, int index, child) => _pages[index],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
