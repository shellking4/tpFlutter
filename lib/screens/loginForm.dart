import 'dart:async';
import 'package:delivery_app/database/dbServices.dart';
import 'package:delivery_app/database/database.dart';
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
  DbService dbService;
  bool _isInAsyncCall = false;
  bool _isInvalidAsyncLogin = false;
  Livreur livreur;
  Receptionnaire receptionnaire;

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
    dbService = DbService();
    loginFieldController = TextEditingController();
    passFieldController = TextEditingController();
  }

  String _validateField(String value) {
    if (value.length == 0) {
      return "Veuillez remplir ce champ";
    }
    return null;
  }

  void clearFields() {
    loginFieldController.text = '';
    passFieldController.text = '';
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, loadInformation);
  }

  loadInformation() {}

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
                        validator: _validateField),
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
                        validator: _validateField),
                    SizedBox(height: 50.0),
                    RoundedButton(
                        title: "S'AUTHENTIFIER",
                        color: Color(0xFF1B5E20),
                        width: 300.0,
                        onPressed: () {
                          _submit();
                        }),
                  ]))
            ],
          ),
        ));
  }
}
