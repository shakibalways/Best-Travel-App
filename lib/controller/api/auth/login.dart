import 'dart:developer';

class LoginService {
  static Future<bool> loginService({
    required String email,
    required String password,
  }) async {

    try {
      return true;
    } catch (e) {
      log(e.toString());
    }
    return false;
  }
}
