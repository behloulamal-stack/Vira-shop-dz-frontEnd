import 'package:get_it/get_it.dart';
import 'package:vira_shop_dz/core/database/catche/catch_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
