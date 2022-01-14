import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_analyzer/Screens/Login.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class LandingScreen extends StatelessWidget {
  static String id = 'Landing Screen';

  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Image.asset(
                'images/logo.png',
              ),
            ),
            Spacer(flex: 3,),
            Expanded(
              flex: 1,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      nextScreen: Login(),
      animationDuration: Duration(seconds: 1),
      backgroundColor: mBlue,
      centered: true,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 300,
    );
  }
}
