class AppUrls {
  static const String baseUrl = "https://oau-emergency.onrender.com/api/v1/";
  static const String signUp = "${baseUrl}auth/register";
  static const String login = "${baseUrl}auth/login";
  static const String verify = "${baseUrl}auth/verify";
  static const String forgotPassword = "${baseUrl}auth/forgot-password";
  static const String resetPassword = "${baseUrl}auth/new-password";
  static const String refreshToken = "${baseUrl}auth/refresh";
  static const String getUser = "${baseUrl}user";
  static const String updateUser = "${baseUrl}user";
  static const String createSafetyTips = "${baseUrl}admin/safety-tips";
  static const String getSafetyTips = "$baseUrl/safety-tips";
  static const String getAllReports = "${baseUrl}admin/reports";
  static const String acknowledgeReport = "${baseUrl}admin/acknowledge-report";
  static const String getUserReports = "$baseUrl/user/reports";
  static const String createReport = "$baseUrl/user/reports";
  static const String emergencyContacts = "${baseUrl}user/emergency-contact";
  static const String adminLogin = "${baseUrl}admin-auth/login";
  static const String uploadImage = "${baseUrl}upload/image";
}