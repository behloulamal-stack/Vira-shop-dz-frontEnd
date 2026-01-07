import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isPassword;

  final Widget? suffixIcon;
  const CustomTextFormFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.isPassword = false,
    this.suffixIcon,
  });

  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          return null;
        },
        obscureText: widget.isPassword ? _isHidden : false,

        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                )
              : widget.suffixIcon,

          hintText: widget.hintText,

          // hintStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),

            borderSide: BorderSide(color: AppColors.secondColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(color: Colors.red),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(color: Colors.red),
          ),
          fillColor: AppColors.thirdColor,
          filled: true,
        ),
      ),
    );
  }
}
