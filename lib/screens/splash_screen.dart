import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationPage() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Welcome()));
  }

  startTime() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0X5534AF),
          child: Image(
            image: ExactAssetImage(
              'assets/images/welcome/splash.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Color(0XFf5534AF).withAlpha(100),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Transform.translate(
                    offset: Offset(0, -60),
                    child: Icon(
                      Icons.ac_unit,
                      size: 100,
                    )),
                Text(
                  'رقوش...المتجر الاول للكتب ..رقوش',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyHomePage {}
