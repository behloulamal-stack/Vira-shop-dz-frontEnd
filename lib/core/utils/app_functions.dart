import 'package:go_router/go_router.dart';
import 'package:vira_shop_dz/core/database/catche/catch_helper.dart';
import 'package:vira_shop_dz/core/services/services_locator.dart';

void customNavigateReplacement(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
void customNavigate(context, String path) {
  GoRouter.of(context).push(path);
}
 void onBordingVisited() {
      getIt<CacheHelper>().saveData(key: "isonBoardingVisited" ,value:true );
               
  }
