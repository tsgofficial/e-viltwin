import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logic/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AuthController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [],
          ),
        );
      },
    );
  }
}
