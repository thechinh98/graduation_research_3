import 'dart:async';

import 'login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<bool> loginWithEmailAndPassword({email, password}) async {
    await Future.delayed(Duration(milliseconds: 500));
    bool success = true;
    return success;
  }
}
