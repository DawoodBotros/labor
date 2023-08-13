

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/core/utils/app_colors.dart';
import 'package:labor/core/utils/app_style.dart';
import 'package:labor/features/onbording/presentation/model/board.dart';
import 'package:labor/features/onbording/widget/build_dot.dart';
import 'package:labor/features/onbording/widget/custom_but.dart';
import 'package:labor/features/onbording/widget/slider.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = '/OnBoardingOneScreen';

  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardModel> slides = <BoardModel>[];
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    slides = getSlides(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    },
                    child: Text(
                      "Skip",
                      style: poppins15(),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: slides.length,
                  itemBuilder: (context, index) {
                    // contents of slider
                    return SliderA(
                      image: slides[index].getImage(),
                      title: slides[index].getTitle(),
                      body:  slides[index].getBody(),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                slides.length,
                (index) => buildDot(
                    index,
                    context,
                    currentIndex,
                    currentIndex == index
                        ? AppColors.orange_color
                        : AppColors.sub_color),
              ),
            ),
            SizedBox(
              height: 45.sp,
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: CustomButton(
                voidCallback: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                },
              ),
            ),
            SizedBox(
              height: 45.sp,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
