import 'dart:developer';

import 'package:http/http.dart';

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
