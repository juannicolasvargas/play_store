import 'package:flutter/cupertino.dart';

import 'package:play_store/src/views/home_view.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => const HomeView()
  };
}
