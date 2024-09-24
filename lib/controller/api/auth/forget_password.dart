import 'dart:developer';

class ForgetPasswordService {
  static Future<bool> forgetPassService({
    required String email,
  }) async {
    try {
      return true;
    } catch (e) {
      log(e.toString());
    }
    return false;
  }
}
