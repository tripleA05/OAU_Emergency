import 'dart:developer';

import 'package:get/get.dart';

import 'package:oau_emergency_1/repositories/auth_repository.dart';

class HttpUtil {
  static Map<String, String> getHeader() {
    final userRepository = Get.find<AuthRepository>();
    log("user token is ${userRepository.token}");
    return {
      "Authorization": "Bearer ${userRepository.token}",
      "Content-Type": "application/json",
    };
  }
}