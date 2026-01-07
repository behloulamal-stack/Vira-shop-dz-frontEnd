
import 'package:flutter/material.dart';
import 'package:vira_shop_dz/Features/on_boarding/data/model/on_boarding_model.dart';
import 'package:vira_shop_dz/core/utils/app_functions.dart';
import 'package:vira_shop_dz/core/utils/app_text_style.dart';

import 'package:vira_shop_dz/core/widget/custom_button_widget.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButtonWidget(
            title: 'Creat Account',
            onpressed: () {
          
              customNavigateReplacement(context, '/SignUp');
                  onBordingVisited();
            },
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              customNavigateReplacement(context, '/SignIn');
             onBordingVisited();  },
            child: Text('Sign In Now', style: AppTextStyle.secondColor17),
          ),
        ],
      );
    } else {
      return CustomButtonWidget(
        title: 'Next',
        onpressed: () {
          controller.nextPage(
            duration: Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }

 
}
