import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/bloc/cubit/auth_cubit.dart';
import 'package:vira_shop_dz/core/database/catche/catch_helper.dart';

import 'package:vira_shop_dz/core/router/app_router.dart';
import 'package:vira_shop_dz/core/services/services_locator.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider<AuthCubit>(create: (_) => AuthCubit())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.grayColor),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'VIRA shop DZ',
    );
  }
}
