import 'package:flutter_graduation_research_3/providers/model/account_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  factory AppProvider() {
    if (_instance == null) {
      _instance = AppProvider._getInstance();
    }
    return _instance;
  }

  static AppProvider _instance;
  AppProvider._getInstance();

  // Declare list of model here
  AccountModel accountModel;

  init() {
    accountModel = AccountModel();
  }

  List<SingleChildWidget> get providers => [
        ChangeNotifierProvider(create: (_) => accountModel),
      ];
}
