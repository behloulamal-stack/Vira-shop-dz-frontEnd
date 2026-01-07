import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';

import 'package:vira_shop_dz/core/utils/app_text_style.dart';

class TextRowWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final Function() onTap;
  const TextRowWidget({super.key, required this.text1, required this.text2, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1 ,style: AppTextStyle.orange13.copyWith(color: AppColors.blackColor),),
        GestureDetector(
          onTap: onTap,
          child: Center(child: Text(text2, style: AppTextStyle.orange13)),
        ),
      ],
    );
  }
}
