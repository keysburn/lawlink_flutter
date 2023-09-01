import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawlink_flutter/routes/app_routes.dart';
import 'package:lawlink_flutter/ui/splash/splash_viewmodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initialization();
  }

  @override
  Widget build(BuildContext context) {
    SplashViewModel splashViewModel = Get.put(SplashViewModel());
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/logo.png')),
      ),
    );
  }

  /// 데이터 동기화
  /// 토큰 유효 확인
  void _initialization() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    Get.offAndToNamed(AppRoutes.home);
  }
}
