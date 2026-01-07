
import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';


class CustomButtonWidget extends StatelessWidget {
  final String title;
  final Function() onpressed;
  const CustomButtonWidget({super.key, required this.title, required this.onpressed, });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 14),
    
        backgroundColor: AppColors.primaryColor,
      ),
    
      onPressed: onpressed,
      child: Text(
        title ,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}