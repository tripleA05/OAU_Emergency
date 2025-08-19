import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// ignore: depend_on_referenced_packages
import 'package:http_parser/http_parser.dart';
import 'package:oau_emergency_1/app_urls.dart';
import 'package:oau_emergency_1/http_util.dart';
import 'package:oau_emergency_1/models/report.dart';
import 'package:oau_emergency_1/models/safety_tip.dart';
import 'package:oau_emergency_1/repositories/auth_repository.dart';

class UserRepository extends GetxController {
  Rx<List<Report>?> reportList = Rx(null);
  Rx<List<SafetyTip>?> safetyTipList = Rx(null);
  final _authController = Get.find<AuthRepository>();

  Future<void> createReport({
    required String location,
    required String date,
    required String details,
    required String imagePath,
  }) async {
    try {
      String? uploadedImageUrl = await uploadImageForPost(imagePath);

      if (uploadedImageUrl != null) {
        final body = {
          "location": location,
          "date": date,
          "details": details,
          "image": uploadedImageUrl,
        };

        log('create report body is $body');
        final response = await http.post(
          Uri.parse(AppUrls.createReport),
          headers: HttpUtil.getHeader(),
          body: jsonEncode(body),
        );

        log('create report response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          final json = jsonDecode(response.body);
          log(json['message']);
          // Handle successful report creation
          Get.back();
          fetchReports();
          Get.snackbar('Success', 'Report created successfully');
        }
      }
    } catch (e) {
      log('create report error is $e');
      Get.snackbar('Error', 'Failed to create report. Please try again.');
    }
  }

  Future<void> fetchReports() async {
    try {
      final response = await http.get(
        Uri.parse(AppUrls.getUserReports),
        headers: HttpUtil.getHeader(),
      );

      log('fetch reports response is status code: ${response.statusCode} body: ${jsonDecode(response.body)}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        reportList.value = List.from(json['data'])
            .where(
                (item) => item['userId'] == '${_authController.user.value?.id}')
            .map((item) => Report.fromJson(item))
            .toList();

        // json.map((item) => Report.fromJson(item)).toList();
        Get.snackbar('Success', 'Reports fetched successfully');
      }
    } catch (e) {
      log('fetch reports error is $e');
      Get.snackbar('Error', 'Failed to fetch reports. Please try again.');
    }
  }

  Future<void> fetchSafetyTips() async {
    try {
      final response = await http.get(
        Uri.parse(AppUrls.getSafetyTips),
        headers: HttpUtil.getHeader(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        log('response is ${json['data']}');
        safetyTipList.value = List.from(json['data'])
            .map((item) => SafetyTip.fromJson(item))
            .toList();
      }
    } catch (e) {
      log('fetch safety tips error is $e');
    }
  }

  Future<String?> uploadImageForPost(String imagePath) async {
    try {
      log("uploading image is");
      var request =
          http.MultipartRequest("POST", Uri.parse(AppUrls.uploadImage));
      request.files.add(await http.MultipartFile.fromPath("image", imagePath,
          contentType: MediaType('image', 'jpeg')));
      request.headers.addAll(HttpUtil.getHeader());

      var streamResponse = await request.send();
      String result =
          await streamResponse.stream.transform(const Utf8Decoder()).single;
      log("upload image response is $result ${request.url}");
      if (streamResponse.statusCode == 201 ||
          streamResponse.statusCode == 200) {
        final json = jsonDecode(result);
        log("upload image response is $json");
        return json['url'];
      }
      return null;
    } catch (ex) {
      log("uploading error ${ex.toString()}");
      return null;
    }
  }
}
