import 'dart:io';
import 'package:flutter/cupertino.dart';

class MyTabBarWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'products'
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.shopping_cart),
          label: 'Cart'
        )
      ]
    );
  }
}
