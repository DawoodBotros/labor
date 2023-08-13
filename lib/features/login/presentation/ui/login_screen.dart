import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/core/utils/app_images.dart';
import 'package:labor/core/utils/app_style.dart';
import 'package:labor/core/utils/components.dart';
import 'package:labor/features/forget_password/forget_password.dart';
import 'package:labor/features/login/presentation/widgets/sing_up.dart';
import 'package:labor/features/onbording/widget/custom_but.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "Login";
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  LoginScreen({super.key});

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
            "Login",
            style: poppins28(),
          ),
          SizedBox(
            height: 15.sp,
          ),
          const Text(
            "    Please Enter your Phone and password ",
            style: TextStyle(color: Colors.grey),
          ),
          const Text(
            "   to continue ",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: defaultFormField(
                controller: phone,
                label: "Phone",
                icon: Icon(Icons.phone),
                validate: () {}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: defaultFormField(
                controller: password,
                label: "Password",
                icon: const Icon(Icons.remove_red_eye_outlined),
                validate: () {}),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ForgetPassword.routeName);
                },
                child: Text(
                  "Forget Password?",
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(text: "login"),
          SizedBox(
            height: 20.h,
          ),
          const Text("OR"),
          SizedBox(
            height: 20.h,
          ),
          SingUpSocial("Facebook", Image.asset(AppImages.icons_facebook)),
          SingUpSocial("Google", Image.asset(AppImages.google)),
          SizedBox(
            height: 20.h,
          ),
          const Text("Don’t Have Account ? Sign Up")
        ],
      ),
    );
  }
}
