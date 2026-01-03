import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/database/catche/catch_helper.dart';
import 'package:vira_shop_dz/core/services/services_locator.dart';

import 'package:vira_shop_dz/core/utils/app_functions.dart';
import 'package:vira_shop_dz/core/utils/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    bool isonBoardingVisited = getIt<CacheHelper>().getData(key: 'isonBoardingVisited')?? false;
    if(isonBoardingVisited == true){
       viraNavigete(context, '/SignUp');

    }else{
        viraNavigete(context, '/onBoardingScreen');

    }
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text('VIRA', style: AppTextStyle.titel)),
      ),
    );
  }
}

void viraNavigete(context ,String path) {
  Future.delayed(Duration(seconds: 3), () {
    customNavigateReplacement(context, path);
  });
}
