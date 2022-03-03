import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.deepPurple,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          home: Login_Page(),
        );
      },
    );
  }
}
