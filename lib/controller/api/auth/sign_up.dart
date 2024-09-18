import 'dart:developer';

class SignUpService {
  static Future<bool> signUpService() async {
    try {
      return true;
    } catch (e) {
      log(e.toString());
    }
    return false;
  }
}
