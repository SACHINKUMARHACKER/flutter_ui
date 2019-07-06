import 'package:flutter/material.dart';
import 'dart:async';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  static String tag='splash-page';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async{
    var _duration=Duration(seconds: 5);
    return Timer(_duration,navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushNamed(LoginPage.tag);
  }

  @override
  void initState() {
    
    super.initState();
    startTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            SizedBox(height: 120.0,),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}