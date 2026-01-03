import 'package:flutter/material.dart';

import 'package:vira_shop_dz/Features/on_boarding/presentation/widget/get_button.dart';
import 'package:vira_shop_dz/Features/on_boarding/presentation/widget/on_boarding_body.dart';

import 'package:vira_shop_dz/core/utils/app_functions.dart';
import 'package:vira_shop_dz/core/utils/app_text_style.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 9),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                       
                    customNavigateReplacement(context, '/SignUp');
                    onBordingVisited();  },
                  child: Text('skip', style: AppTextStyle.secondColor17),
                ),
              ),
              OnBoardingBody(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              GetButtons(currentIndex: currentIndex, controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
