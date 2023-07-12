import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/bks.png',
                ),
              ),
            ),
            const Expanded(
              child: Text(
                'BKS Cam Balkon Sistemleri',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      splashIconSize: 350,
      backgroundColor: Colors.blueGrey,
      nextScreen: LoginScreen(),
      duration: 2000,
      centered: true,
    );
  }
}
