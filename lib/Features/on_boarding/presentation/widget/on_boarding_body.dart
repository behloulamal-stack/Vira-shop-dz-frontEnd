
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vira_shop_dz/Features/on_boarding/data/model/on_boarding_model.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';
import 'package:vira_shop_dz/core/utils/app_text_style.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: BouncingScrollPhysics(),

        controller: controller,
        itemCount: onBoardingData.length,

        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(child: Image.asset(onBoardingData[index].imagePath)),

              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.primaryColor,
                  dotHeight: 7,
                  dotWidth: 7,
                ),
              ),

              SizedBox(height: 25),
              Text(
                onBoardingData[index].title,
                style: AppTextStyle.black24,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 25),
            ],
          );
        },
      ),
    );
  }
}