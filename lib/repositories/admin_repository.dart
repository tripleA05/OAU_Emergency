import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:oau_emergency_1/app_urls.dart';
import 'package:oau_emergency_1/http_util.dart';
import 'package:oau_emergency_1/models/report.dart';

class AdminRepository extends GetxController {
  String? token;
  Rx<List<Report>?> reportList = Rx(null);

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
        token = json['accessToken'];

        log('token is $token');
        // await getUser();
        // Get.to(() => const Navbar());
      }
    } catch (e) {
      log('login error is $e');
    }
  }

  Future<void> fetchAllReports() async {
    try {
      final response = await http.get(
        Uri.parse(AppUrls.getAllReports),
        headers: HttpUtil.getHeader(),
      );

      log('fetch reports response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        reportList.value = List.from(json['data'])
            .map((item) => Report.fromJson(item))
            .toList();
        // json.map((item) => Report.fromJson(item)).toList();
      }
    } catch (e) {
      log('fetch reports error is $e');
    }
  }

  Future<void> acknowledgeReport(String reportId) async {
    try {
      final response = await http.patch(
        Uri.parse(AppUrls.acknowledgeReport),
        headers: HttpUtil.getHeader(),
        body: jsonEncode({"id": reportId}),
      );

      log('acknowledge report response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        log(json['message']);
        Get.snackbar('Success', 'Report acknowledged successfully'); // use this as an example
        // Handle successful acknowledgment
      }
    } catch (e) {
      log('acknowledge report error is $e');
    }
  }

  Future<void> createSafetyTip({
    required String title,
    required String body,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(AppUrls.createSafetyTips),
        headers: HttpUtil.getHeader(),
        body: jsonEncode({
          "title": title,
          "body": body,
        }),
      );

      log('create safety tip response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        log(json['message']);
        // Handle successful creation of safety tip
      }
    } catch (e) {
      log('create safety tip error is $e');
    }
  }
}
