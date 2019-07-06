import 'package:flutter/material.dart';
import 'package:ui_app/splash_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  final routes=<String,WidgetBuilder>{
    LoginPage.tag : (context) => LoginPage(),
    HomePage.tag : (context) => HomePage(),
    SplashScreen.tag : (context) => SplashScreen(),
  };
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
        accentColor: Colors.lightBlue,
        brightness: Brightness.light,
      ),
      home: SplashScreen(),
      routes: routes,
    );
  }
}

