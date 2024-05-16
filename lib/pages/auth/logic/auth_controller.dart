import 'package:get/get.dart';

import '../../../core/logic/core_service.dart';
import '../state/auth_state.dart';

class AuthController extends GetxController {
  final AuthState state = AuthState();
  final CoreService coreService = Get.find();

  /// Login to the app
  Future<(bool, dynamic)> login() async {
    state.isLoading.value = true;
    await Future.delayed(2.seconds);
    state.isLoading.value = false;
    return (true, null);
  }

  void onPasswordChanged(String password) {
    state.password = password;
    _checkButtonState();
  }

  void onPhoneNumberChanged(String phoneNumber) {
    state.phoneNumber = phoneNumber;
    _checkButtonState();
  }

  void _checkButtonState() {
    if (state.phoneNumber.isNotEmpty && state.password.isNotEmpty) {
      state.isButtonEnabled.value = true;
    } else {
      state.isButtonEnabled.value = false;
    }
  }
}
