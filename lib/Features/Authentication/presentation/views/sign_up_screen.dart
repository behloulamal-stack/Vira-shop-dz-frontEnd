import 'package:flutter/material.dart';

import 'package:vira_shop_dz/Features/Authentication/presentation/widget/customText_form_field_widget.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/widget/termsAnd_condition_widget.dart';

import 'package:vira_shop_dz/core/widget/custom_button_widget.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/widget/role_widget.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/widget/text_row_widget.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/widget/welcome_text_widget.dart';
import 'package:vira_shop_dz/core/utils/app_functions.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 60)),
              SliverToBoxAdapter(child: WelcomeTextWidget(text: 'Welcome')),
              SliverToBoxAdapter(child: SizedBox(height: 25)),
              SliverToBoxAdapter(
                child: CustomTextFormFieldWidget(hintText: 'User Name'),
              ),
              SliverToBoxAdapter(
                child: CustomTextFormFieldWidget(hintText: 'Email Address'),
              ),
              SliverToBoxAdapter(
                child: CustomTextFormFieldWidget(
                  hintText: 'Password',
                  isPassword: true,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextFormFieldWidget(
                  hintText: 'Confirm Password',
                  isPassword: true,
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 25)),
              SliverToBoxAdapter(child: RoleWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: TermsAndConditionWidget(),),
              SliverToBoxAdapter(
                child: CustomButtonWidget(title: 'Sign Up', onpressed: () {}),
              ),SliverToBoxAdapter(child: SizedBox(height: 34,),),
    
              SliverToBoxAdapter(
                child: TextRowWidget(
                  text1: 'Already have an account? ',
                  text2: 'Sign In',
                  onTap: () {
                    customNavigateReplacement(context, "/SignIn");
                  },
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
