import 'package:get/get.dart';
import 'package:oau_emergency_1/repositories/admin_repository.dart';
import 'package:oau_emergency_1/repositories/auth_repository.dart';
import 'package:oau_emergency_1/repositories/user_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthRepository(), permanent: true);
    Get.put(UserRepository(), permanent: true);
    Get.put(AdminRepository(), permanent: true);
  }
}