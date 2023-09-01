import 'package:get/get.dart';
import 'package:lawlink_flutter/routes/app_routes.dart';
import 'package:lawlink_flutter/ui/home/home_screen.dart';
import 'package:lawlink_flutter/ui/login/login_screen.dart';
import 'package:lawlink_flutter/ui/splash/splash_screen.dart';

class AppPages {
  static const initialPage = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    // GetPage(
    //   name: AppRoutes.incident,
    //   page: () => const IncidentView(),
    // ),
    // GetPage(
    //   name: AppRoutes.incidentAdd,
    //   page: () => const IncidentAddView(),
    // ),
    // GetPage(
    //   name: AppRoutes.incidentDetail,
    //   page: () => const IncidentDetailView(),
    //   transition: Transition.rightToLeft,
    // ),
  ];
}
