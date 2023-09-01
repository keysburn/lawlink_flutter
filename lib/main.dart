import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawlink_flutter/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.initialPage,
    getPages: AppPages.routes,
  ));
}
