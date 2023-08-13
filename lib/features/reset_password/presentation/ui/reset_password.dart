import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/core/utils/app_style.dart';
import 'package:labor/core/utils/components.dart';
import 'package:labor/features/onbording/widget/custom_but.dart';

class ResetPassword extends StatelessWidget {
 static const String routeName = "rest";
 TextEditingController password = TextEditingController();
 TextEditingController ConfirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Text(
            "Reset Password",
            style: poppins28(),
          ),
          SizedBox(height: 15.sp,),
          Text(
            "    Please Enter your Phone and password ",
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            "   to continue ",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: defaultFormField(
                controller: password,
                label: "Enter Your Password",
                icon: Icon(Icons.remove_red_eye_outlined),
                validate: () {}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: defaultFormField(
                controller: ConfirmPassword,
                label: "Enter Your Confirm Password",
                icon: Icon(Icons.remove_red_eye_outlined),
                validate: () {}),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomButton(text: "Save Password"),
        ],
      ),
    );
  }
}
