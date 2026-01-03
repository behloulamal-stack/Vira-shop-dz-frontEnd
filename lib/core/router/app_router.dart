import 'package:go_router/go_router.dart';

import 'package:vira_shop_dz/Features/Authentication/presentation/views/register_screen.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/views/sign_in_screen.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/views/splash_screen.dart';
import 'package:vira_shop_dz/Features/on_boarding/presentation/screen/on_boarding_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),

    GoRoute(
      path: '/onBoardingScreen',
      builder: (context, state) => const OnBoardingScreen(),
    ),

    GoRoute(path: "/SignIn", builder: (context, state) => const SignInScreen()),

    GoRoute(
      path: '/SignUp',
      builder: (context, state) => const SignUpScreen(),
    ),
  ],
);
