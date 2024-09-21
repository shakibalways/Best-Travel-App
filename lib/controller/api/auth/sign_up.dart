
import 'dart:developer';

class SignUpService {
  static Future<bool> signUpService({
    required String userName,
    required String email,
    required String password,
    required String confirmPass,
  }) async {

    try {
      Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      log(e.toString());
    }
    return false;
  }
}
