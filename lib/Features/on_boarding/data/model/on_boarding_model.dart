import 'package:vira_shop_dz/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;

  OnBoardingModel({required this.imagePath, required this.title});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(imagePath: Assets.img1, title: "Browse and buy like you're really there form your phone !" ),
  OnBoardingModel(imagePath: Assets.img2, title: "Enjoy a smooth , simple , and secure purchasing process."),
  OnBoardingModel(imagePath: Assets.img3, title: "Easily set up and control your online 3D shop."),
];
