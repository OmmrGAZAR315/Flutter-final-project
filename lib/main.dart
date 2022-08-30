import 'package:flutter/material.dart';

import 'Screens/Account.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/fav.dart';
import 'Screens/hommyPage.dart';
import 'Screens/menu.dart';
import 'Screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "search": (context) => search(),
        "account": (context) => account(),
        "remember": (context) => remember(),
        "create": (context) => create(),
        "fav": (context) => fav(),
        "hommyPage": (context) => hommyPage(),
        "menu": (context) => menu(),
      },
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
