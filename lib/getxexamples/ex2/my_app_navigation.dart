import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/getxexamples/ex2/screen_first.dart';
import 'package:flutter_bloc_example/getxexamples/ex2/screen_second.dart';
import 'package:flutter_bloc_example/getxexamples/ex2/screen_third.dart';
import 'package:flutter_bloc_example/getxexamples/ex2/unknown_page.dart';
import 'package:get/get.dart';

class MyAppNavigation extends StatelessWidget {
  const MyAppNavigation({super.key});

  @override
  Widget build(context) {
    return GetMaterialApp(
      initialRoute: "first",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/first", page: () => ScreenFirst()),
        GetPage(name: "/second", page: () => ScreenSecond()),
        GetPage(name: "/third", page: () => ScreenThird()),
      ],
      unknownRoute: GetPage(name: "/unknown", page: () => UnknownPage()),
    );
  }
}
