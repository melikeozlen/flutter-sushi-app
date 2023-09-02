import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sushi_restaurant/screens/detailPage.dart';
import 'package:sushi_restaurant/screens/menu.dart';
import 'package:sushi_restaurant/screens/startPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Schyler"),
        routes: {
          '/manupage': (context) => const Menu(),
          '/mainPage': (context) => const StartPage(),
          '/detail': (context) => const Detail(),
        },
        home: const StartPage());
  }
}
