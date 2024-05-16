import 'package:get/get.dart';

import '../suite/core_screen_type.dart';

class CoreService extends GetxService {
  final Rx<CoreScreenType> currentScreen = CoreScreenType.splash.obs;
  Worker? screenChangeWorker;

  @override
  void onReady() {
    screenChangeWorker?.dispose();
    screenChangeWorker = ever(currentScreen, (CoreScreenType screen) async {
      switch (screen) {
        case CoreScreenType.splash:
          _checkToken();
          break;
        case CoreScreenType.auth:
        case CoreScreenType.home:
          break;
      }
    });
    _checkToken();
    super.onReady();
  }

  void _checkToken() async {
    await Future.delayed(2.seconds);
    changeToAuthScreen();
  }

  /// Change the screen to home screen
  void changeToHomeScreen() {
    currentScreen.value = CoreScreenType.home;
  }

  /// Change the screen to auth screen
  void changeToAuthScreen() {
    currentScreen.value = CoreScreenType.auth;
  }

  /// Change the screen to splash screen
  void changeToSplashScreen() {
    currentScreen.value = CoreScreenType.splash;
  }

  @override
  void onClose() {
    screenChangeWorker?.dispose();
    super.onClose();
  }
}
