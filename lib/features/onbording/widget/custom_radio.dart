import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labor/core/utils/app_colors.dart';
import 'package:labor/features/onbording/presentation/manager/onboarding_provider.dart';
import 'package:provider/provider.dart';

class CustomRadio extends StatefulWidget {
  String? Langu;

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<OnboardingProvider>(context);
    return Column(
      children: [
        RadioListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 0),
          activeColor: AppColors.primary,
          title: Text("English"),
          value: "en",
          groupValue: provider.language,
          onChanged: (value) {
            setState(() {
              provider.setLang(value.toString());
            });
            setState(() {

            });
          },
        ),
        Divider(
          thickness: 1,
          height: 1.h,
          color: Color.fromRGBO(0, 0, 0, 0.1),
        ),
        RadioListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 0),
          activeColor: AppColors.primary,
          title: Text("Arabic"),
          value: "ar",
          groupValue: provider.language,
          onChanged: (value) {
            setState(() {
             provider.setLang(value.toString());
            });
            setState(() {

            });
          },
        ),
        Divider(
          thickness: 1,
          height: 1.h,
          color: Color.fromRGBO(0, 0, 0, 0.1),
        ),
      ],
    );
  }
}
