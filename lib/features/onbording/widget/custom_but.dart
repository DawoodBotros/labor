import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labor/core/utils/app_colors.dart';
import 'package:labor/core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  VoidCallback? voidCallback;
  String? text;
  Image? image;

  CustomButton({super.key, this.voidCallback, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.white)
      ),
      child: MaterialButton(
        onPressed: voidCallback,
        minWidth: double.infinity,
        textColor: Colors.white,
        child: Text("Enter"),
      ),
    );
  }
}
