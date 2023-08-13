import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/core/utils/app_images.dart';
import 'package:labor/core/utils/app_style.dart';
import 'package:labor/features/onbording/presentation/model/board.dart';

class SliderA extends StatelessWidget {
  String? image, title, body;

  SliderA({this.image, this.title, this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image!)),
          SizedBox(height: 20),
          Text(
            title!,
            style: poppins18(),
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.all(25.w),
            child: Text(body!),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
