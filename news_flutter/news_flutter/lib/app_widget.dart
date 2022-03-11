import 'package:flutter/material.dart';
import 'package:news_flutter/initial_page.dart';

import 'app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => InitialPage(),
            '/home': (context) => HomePage(),
        /*  '/money': (context) => classHere(),
            '/tech': (context) => classHere(),
            '/games': (context) => classHere(),*/
          },
        );
      },
    );
  }
}
