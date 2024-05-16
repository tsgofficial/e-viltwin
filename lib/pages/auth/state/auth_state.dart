import 'package:get/get.dart';

class AuthState {
  final RxBool isLoading = false.obs;
  final RxBool isButtonEnabled = false.obs;
  String phoneNumber = '';
  String password = '';
}
