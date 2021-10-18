import 'package:flutter/cupertino.dart';
import 'package:play_store/src/routes/routes.dart';
import './src/views/home_view.dart';

class PlayStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: getRoutes(),
      home: HomeView()
    );
  }
}

