import 'package:delivery_app/screens/homeScreen.dart';
import 'package:delivery_app/utils/button.dart';
import 'package:delivery_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String login;
  String password;
  String message;
  bool _autoValidate = false;
  bool _loginExist = false;
  TextEditingController loginFieldController;
  TextEditingController passFieldController;
  final _formKey = GlobalKey<FormState>();

  bool _isInAsyncCall = false;
  bool _isInvalidAsyncLogin = false;

  // ignore: unused_element
  _submit() async {
    if (_formKey.currentState.validate() == true) {
      _formKey.currentState.save();
      FocusScope.of(context).requestFocus(new FocusNode());
      setState(() {
        _isInAsyncCall = true;
      });
    }
  }

  @override
  initState() {
    super.initState();
    loginFieldController = TextEditingController();
    passFieldController = TextEditingController();
  }

  String _validateLogin(String value) {
    if (value.length == 0) {
      return "Veuillez entrer votre login";
    }
    return null;
  }

  void clearFields() {
    loginFieldController.text = '';
    passFieldController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
        inAsyncCall: _isInAsyncCall,
        opacity: 0.5,
        progressIndicator: CircularProgressIndicator(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 40.0),
              CircleAvatar(
                child: Icon(Icons.perm_identity, color: Colors.black),
                radius: 30,
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              SizedBox(height: 48.0),
              Form(
                  key: _formKey,
                  // ignore: deprecated_member_use
                  autovalidate: _autoValidate,
                  child: Column(children: <Widget>[
                    TextFormField(
                        controller: loginFieldController,
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.center,
                        onSaved: (value) {
                          login = value;
                        },
                        decoration:
                            kTextFieldDecoration.copyWith(hintText: 'Login'),
                        validator: _validateLogin),
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: passFieldController,
                      obscureText: true,
                      textAlign: TextAlign.center,
                      onSaved: (value) {
                        password = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Mot de Passe'),
                    ),
                    SizedBox(height: 20.0),
                    RoundedButton(
                        title: "S'AUTHENTIFIER",
                        color: Color(0xFF1B5E20),
                        width: 300.0,
                        onPressed: () {
                          _submit();
                        })
                  ]))
            ],
          ),
        ));
  }
}
