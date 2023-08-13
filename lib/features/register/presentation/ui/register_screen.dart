import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/core/utils/app_images.dart';
import 'package:labor/core/utils/app_style.dart';
import 'package:labor/core/utils/components.dart';
import 'package:labor/features/login/presentation/widgets/sing_up.dart';
import 'package:labor/features/onbording/widget/custom_but.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "register";
  TextEditingController fullname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
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
            "Register",
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
                controller: fullname,
                label: "Full Name",
                icon: Icon(Icons.account_box_sharp),
                validate: () {}),
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
                icon: Icon(Icons.remove_red_eye_outlined),
                validate: () {}),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(text: "Register"),
          SizedBox(
            height: 20.h,
          ),
          Text("OR"),
          SingUpSocial("Facebook", Image.asset(AppImages.icons_facebook)),
          SingUpSocial("Google", Image.asset(AppImages.google)),
          Text("Have Account ? Sign in")

        ],
      ),
    );
  }
}
