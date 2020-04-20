 import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/splash_screen.dart';

 main()=> runApp(MyApp());


 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(

home: SplashScreen(),
     );
   }
 }