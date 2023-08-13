import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labor/core/utils/app_colors.dart';

TextStyle poppins45() =>
    GoogleFonts.poppins(fontSize: 45.sp, fontWeight: FontWeight.bold);

TextStyle poppins18() =>
    GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.bold);

TextStyle poppins181() => GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    height: 1.44,
    color: AppColors.orange_color);

TextStyle poppins15() => GoogleFonts.poppins(
    fontSize: 15.sp, fontWeight: FontWeight.bold, color: AppColors.yellow);

TextStyle poppins25() => GoogleFonts.poppins(
      fontSize: 25.sp,
      fontWeight: FontWeight.bold,
    );

TextStyle poppinsW600() => GoogleFonts.poppins(
    fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white);

TextStyle poppins28() => GoogleFonts.poppins(
    fontSize: 28.sp, fontWeight: FontWeight.bold, color: AppColors.Black);
