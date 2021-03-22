import 'package:flutter/foundation.dart';
import 'package:flutter_graduation_research_3/models/account.dart';

class AccountModel extends ChangeNotifier {
  Account account = new Account();

  void onLoginSuccess(String userId, String password) {
    account.userId = userId;
    account.password = password;
    notifyListeners();
  }

  void logOut() {
    account = new Account();
    notifyListeners();
  }
}
