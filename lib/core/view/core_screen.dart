import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/auth/view/login_screen.dart';
import '../../pages/home/view/home_screen.dart';
import '../../pages/splash/view/splash_screen.dart';
import '../logic/core_service.dart';
import '../suite/core_screen_type.dart';

class CoreScreen extends StatelessWidget {
  const CoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CoreService coreService = Get.put(CoreService());

    return ObxValue(
      (screen) {
        switch (screen.value) {
          case CoreScreenType.splash:
            return const SplashScreen();
          case CoreScreenType.auth:
            return const LoginScreen();
          case CoreScreenType.home:
            return const HomeScreen();
        }
      },
      coreService.currentScreen,
    );
  }
}
