import 'package:flutter/material.dart';
import 'package:news_flutter/games_page.dart';
import 'package:news_flutter/login_page.dart';
import 'app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  static final title = ["30", "seconds"];

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
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            /*  
            '/money': (context) => classHere(),
            '/tech': (context) => classHere(),
            */
            '/games': (context) => GamesPage(),
          },
        );
      },
    );
  }
}
