import 'package:flutter/cupertino.dart';

abstract class LoginRepository {
  Future<bool> loginWithEmailAndPassword({@required email, @required password});
}
