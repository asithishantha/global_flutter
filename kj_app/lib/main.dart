// @dart=2.9

import 'package:flutter/material.dart';
import 'package:kjapp/animated_screen.dart';
import 'package:kjapp/controllers/login_controller.dart';
import 'package:kjapp/login_page.dart';
import 'package:kjapp/main_page.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginController(),
          child: LoginPage(),

          // child: MainPage(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green.shade400, Colors.blue.shade400])),
          child: AnimatedSplashScreen(
            splash: Lottie.asset(
              'assets/74423-photography.json',
            ),
            nextScreen: AnimatedScreen(),
            // nextScreen: LoginPage(),
            splashTransition: SplashTransition.fadeTransition,

            backgroundColor: Colors.transparent,
            duration: 1550,
          ),
        ),
        // locale: DevicePreview.locale(context), // Add the locale here
        // builder: DevicePreview.appBuilder, // Add the builder here
      ),
    );
  }
}
