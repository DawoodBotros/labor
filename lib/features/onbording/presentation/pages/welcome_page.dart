import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labor/core/utils/app_images.dart';
import 'package:labor/core/utils/app_style.dart';
import 'package:labor/features/onbording/presentation/manager/onboarding_provider.dart';
import 'package:labor/features/onbording/presentation/pages/on_boarding_screen.dart';
import 'package:labor/features/onbording/widget/custom_but.dart';
import 'package:labor/features/onbording/widget/custom_radio.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = "OnBoarding";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<OnboardingProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 70.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(AppImages.onboarding1),
                ],
              ),
              SizedBox(
                height: 30.w,
              ),
              Text(
                "Find your home service",
                style: poppins28(),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("select language", style: poppins18()),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomRadio(),
              SizedBox(
                height: 30.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("By creating an account, you agree to our"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Term and Conditions",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                text: "Enter",
                voidCallback: () {
                  Navigator.pushReplacementNamed(
                      context, OnBoardingScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
