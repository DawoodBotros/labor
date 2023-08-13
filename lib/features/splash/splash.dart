import 'dart:async';

import 'package:flutter/material.dart';
import 'package:labor/core/utils/app_images.dart';
import 'package:labor/features/onbording/presentation/pages/welcome_page.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, WelcomePage.routeName);
    });
    return Scaffold(
      body: Image.asset(
        AppImages.splash,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
