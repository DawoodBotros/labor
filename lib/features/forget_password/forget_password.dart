import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/core/utils/app_style.dart';
import 'package:labor/core/utils/components.dart';
import 'package:labor/features/onbording/widget/custom_but.dart';

class ForgetPassword extends StatelessWidget {
  static const String routeName = "forget";
  TextEditingController Phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Text(
            "Forget Password",
            style: poppins28(),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Text(
            "    Enter your Phone Number ",
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            "   to reset password.",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: defaultFormField(
                controller: Phone,
                label: "Enter Your Password",
                icon: Icon(Icons.phone),
                validate: () {}),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomButton(text: "Reset Password"),
        ],
      ),
    );
  }
}
