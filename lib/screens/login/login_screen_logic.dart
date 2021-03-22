import 'package:flutter/foundation.dart';
import 'package:flutter_graduation_research_3/services/api/core/login/login_repository.dart';
import 'package:flutter_graduation_research_3/services/service_locator.dart';

class AuthScreenLogic {
  LoginRepository authRepository = serviceLocator<LoginRepository>();

  loginWithEmailAndPass(
      {@required email,
      @required password,
      Function successHandler,
      Function failureHandler}) async {
    final loginSuccess = await authRepository.loginWithEmailAndPassword(
        email: email, password: password);
    if (loginSuccess) {
      if (successHandler != null) {
        successHandler();
      }
    } else {
      if (failureHandler != null) {
        failureHandler();
      }
    }
  }
}
