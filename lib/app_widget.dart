import 'package:flutter/material.dart';
import 'package:primeiro_app/app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.darkTheme 
            ? Brightness.dark 
            : Brightness.light,
          ),
        );
      },
    );
  }
}