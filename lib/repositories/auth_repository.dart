import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:oau_emergency_1/app_urls.dart';
import 'package:oau_emergency_1/folders/admin_screens.dart/admin2.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/activate_account_screen.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/newpassword_screen.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/passwordupdated_screen.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/http_util.dart';
import 'package:oau_emergency_1/models/user.dart';

class AuthRepository extends GetxController {
  String? token;
  Rx<User?> user = Rx<User?>(null);
  // User? user;

  Future<void> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      // log('bla');
      final body = {
        "email": email,
        "firstname": firstName,
        "lastname": lastName,
        "password": password,
      };
      log('sign up body is $body');
      // log('bla');
      final response = await http.post(
        Uri.parse(AppUrls.signUp),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(body),
      );

      log('sign up response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        log('bla');
        log(json['message']);
        Get.to(
          () => ActivateAccountScreen(
            email: email,
            password: password,
          ),
        );
        Get.snackbar('Success', 'Account created successfully');
      }
    } catch (e) {
      log('signup error is $e');
      Get.snackbar('Error', 'Failed to create account. Please try again.');
    }
  }

  Future<void> verifyAccount({
    required String email,
    required String code,
    required String password,
  }) async {
    try {
      final body = {
        "email": email,
        "otp": code,
      };
      log('verify account body is $body');
      final response = await http.post(
        Uri.parse(AppUrls.verify),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(body),
      );

      log('verify account response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        log(json['message']);
        // token = json['token'];
        // log('token is $token');
        Get.snackbar('Success', 'Account verified successfully');
        login(email: email, password: password);
      }
    } catch (e) {
      log('verify account error is $e');
      Get.snackbar('Error', 'Failed to verify account. Please try again.');
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      final body = {
        "email": email,
        "password": password,
      };
      log('login body is $body');

      if (email.contains('admin@gmail.com')) {
        final response = await http.post(
          Uri.parse(AppUrls.adminLogin),
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode(body),
        );

        log('login response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          final json = jsonDecode(response.body);
          log(json['message']);
          token = json['data']['accessToken'];
          user.value = User.fromJson(json['data']['adminDetails']);

          log('token is $token');
          // await getUser();
          Get.to(() => const AdminDashboard());
        }
      } else {
        final response = await http.post(
          Uri.parse(AppUrls.login),
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode(body),
        );

        log('login response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          final json = jsonDecode(response.body);
          log(json['message']);
          token = json['data']['accessToken'];
          user.value = User.fromJson(json['data']['userDetails']);

          log('token is $token');
          // await getUser();
          Get.to(() => const Navbar());
          Get.snackbar('Success', 'Login successful');
        }
      }
    } catch (e) {
      log('login error is $e');
      Get.snackbar('Error', 'Login failed. Please try again.');
    }
  }

  Future<void> getUser() async {
    try {
      final response = await http.get(
        Uri.parse(AppUrls.getUser),
        headers: HttpUtil.getHeader(),
      );

      log('get user response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        user.value = User.fromJson(json['data']);
        log('user is $user');
      }
    } catch (e) {
      log('get user error is $e');
    }
  }

  Future<void> forgotPassword({required String email}) async {
    try {
      final body = {
        "email": email,
      };
      log('forgot password body is $body');
      final response = await http.post(
        Uri.parse(AppUrls.forgotPassword),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(body),
      );

      log('forgot password response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        log(json['message']);
        Get.to(() => const NewpasswordScreen());
      }
    } catch (e) {
      log('forgot password error is $e');
    }
  }

  Future<void> resetPassword({
    required String email,
    required String password,
    required String otp,
  }) async {
    try {
      final body = {
        "email": email,
        "password": password,
        "otp": otp,
      };
      log('reset password body is $body');
      final response = await http.post(
        Uri.parse(AppUrls.resetPassword),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(body),
      );

      log('reset password response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        log(json['message']);
        Get.to(() => const PasswordUpdatedScreen());
      }
    } catch (e) {
      log('reset password error is $e');
    }
  }
}
