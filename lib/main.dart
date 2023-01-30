import 'package:ecommerce_app_builtin_dev/Module/Advance%20Drawer/my_app_advance_drawer.dart';
import 'package:ecommerce_app_builtin_dev/Module/Dashboard/dashboard_view.dart';
import 'package:ecommerce_app_builtin_dev/Module/Home/Views/home_view.dart';

import '/Module/Onboarding/Views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashView(),
    );
  }
}
