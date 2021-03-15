
import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/providers/model/account_model.dart';
import 'package:flutter_graduation_research_3/shared/setting/app_router.dart';
import 'package:flutter_graduation_research_3/shared/setting/navigation_services.dart';
import 'package:flutter_graduation_research_3/utils/log.dart';
import 'package:provider/provider.dart';
import 'login_screen_logic.dart';


class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthScreenLogic logic = AuthScreenLogic();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Codeplayon',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                //forgot password screen
              },
              textColor: Colors.blue,
              child: Text('Forgot Password'),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Login'),
                onPressed: () {
                  String email = nameController.text;
                  String password = passwordController.text;
                  Log.warning(email + " -- " + password);
                  logic.loginWithEmailAndPass(
                    email: email,
                    password: password,
                    successHandler: logInSuccess(email, password),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Does not have account?'),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  logInSuccess(String userId, String password) {
    AccountModel _accountModel =
        Provider.of<AccountModel>(context, listen: false);
    _accountModel.onLoginSuccess(userId, password);
    NavigationService().pushReplacementNamed(ROUTER_HOME);
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
