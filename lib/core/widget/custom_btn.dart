import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';
import 'package:vira_shop_dz/core/utils/app_text_style.dart';

class CustomBtn extends StatelessWidget {
  final String title;
  final Color? color;
  final Function() onPressed;
  const CustomBtn({super.key, required this.title, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 3),
            backgroundColor:color?? AppColors.primaryColor,
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
          ),
          child: Text(title ,style: AppTextStyle.white18,),
        ),
      ),
    );
  }
}
