import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_view.dart';
import 'game_view.dart';
import 'movie_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> _tabs = [
    const GameView(), // see the HomeTab class below
    const AppView(), // see the SettingsTab class below
    const MovieView() // see the SettingsTab class below
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Play Store'),
        ),
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: tabBarItems,
            ),
            tabBuilder: (BuildContext context, index) => _tabs[index]));
  }

  List<BottomNavigationBarItem> get tabBarItems {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        label: 'Games',
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search),
        label: 'Apps',
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        label: 'Movies',
      ),
    ];
  }
}
