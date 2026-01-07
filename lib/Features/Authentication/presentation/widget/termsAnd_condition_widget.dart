
import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';
import 'package:vira_shop_dz/core/utils/app_text_style.dart';

class TermsAndConditionWidget extends StatefulWidget {
  const TermsAndConditionWidget({super.key});

  @override
  State<TermsAndConditionWidget> createState() =>
      _TermsAndConditionWidgetState();
}

class _TermsAndConditionWidgetState extends State<TermsAndConditionWidget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          activeColor: AppColors.primaryColor,
          side: BorderSide(color: AppColors.secondColor),
          onChanged: (newValue) {
            setState(() {
              value = newValue!;
              
            });
          },
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'I have agree to our ',
              style: AppTextStyle.orange13.copyWith(color: AppColors.blackColor),
            ),
            TextSpan(
              text: 'Terms and Condition',
              style: AppTextStyle.orange13.copyWith(decoration: TextDecoration.underline ,decorationColor: AppColors.primaryColor),
            ),
          
            
          ]
          )
        )
      ],
    );
  }
}
