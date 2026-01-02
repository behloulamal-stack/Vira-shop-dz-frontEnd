import 'package:go_router/go_router.dart';

import 'package:vira_shop_dz/Features/Authentication/presentation/views/register_screen.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/views/sign_in_screen.dart';




final GoRouter router = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
      path: "/", 
      builder: (context, state) => const SignInScreen()),
    GoRoute(path: '/register', 
      builder: (context, state) => const RegisterScreen()),

      
      
      
      ],
);

