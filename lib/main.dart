import 'package:flutter/material.dart';
import 'package:flutter_xd/screens/home_screen.dart';
import 'package:flutter_xd/screens/splash_screen.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     /*  home: HomeScreen(), */
    initialRoute: '/splash',
     routes: {
      '/splash':(BuildContext context) => const SplashScreen(),
      '/home':( BuildContext  context) => const HomeScreen(), 
     },
      
    );
  }

}

