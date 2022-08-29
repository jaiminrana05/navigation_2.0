import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class Login = LoginStore with _$Login;

abstract class LoginStore with Store {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @observable
  bool logInStatus = false;
}
