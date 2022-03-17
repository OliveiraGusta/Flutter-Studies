import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'home_page.dart';
import 'games_page.dart';
import 'login_page.dart';
import 'technology_page.dart';
import 'economy_page.dart';

class AppWidget extends StatelessWidget {
  static final title = ["30", "SECONDS", 'NEWS'];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.indigo,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light,
              fontFamily: 'Montserrat'),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/economy': (context) => EconomyPage(),
            '/technology': (context) => TechnologyPage(),
            '/games': (context) => GamesPage(),
          },
        );
      },
    );
  }
}
