import 'dart:developer';

class LoginService {
  static Future<bool> loginService() async {
    try {
      return true;
    } catch (e) {
      log(e.toString());
    }
    return false;
  }
}
