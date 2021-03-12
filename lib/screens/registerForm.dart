import 'dart:async';
import 'package:delivery_app/screens/authScreen.dart';
import 'package:delivery_app/database/database.dart';
import 'package:delivery_app/database/dbServices.dart';
import 'package:delivery_app/utils/button.dart';
import 'package:delivery_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterForm createState() => _RegisterForm();
}

class _RegisterForm extends State<RegisterForm> {
  String email;
  String login;
  String password;
  bool _autoValidate = false;
  TextEditingController emailFieldController;
  TextEditingController loginFieldController;
  TextEditingController passFieldController;
  final _formKey = GlobalKey<FormState>();
  bool _isInAsyncCall = false;
  DbService dbService;
  Livreur livreur;
  Receptionnaire receptionnaire;
  Order order;

  // ignore: unused_element
  verifyForm(BuildContext context) async {
    if (_formKey.currentState.validate() == true) {
      _formKey.currentState.save();
      FocusScope.of(context).requestFocus(new FocusNode());
      setState(() {
        _isInAsyncCall = true;
      });

      dbService.getLivreurByEmail(email).then((fetchedLivreur) {
        setState(() {
          this.livreur = fetchedLivreur;
        });
      });
      if (livreur != null) {
        if (email == livreur.email) {
          setState(() {
            _isInAsyncCall = false;
          });
          toDoInFailureCase();
        } else {
          loadLivreurThenRoute();
        }
      } else {
        loadLivreurThenRoute();
      }
    }
  }

  void loadLivreurThenRoute() async {
    _isInAsyncCall = false;
    var livreurs = await dbService.getAllLivreurs();
    if (livreurs != null && livreurs.length > 0) {
      await dbService.insertLivreur(email, login, password);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => AuthScreen(size: 3)));
    } else {
      await dbService.insertLivreur(email, login, password);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => AuthScreen(size: 3)));
    }
  }

  void toDoInFailureCase() {
    _isInAsyncCall = false;
    clearFields();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Erreur",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontFamily: "prata"),
            ),
            content: Text(
              "Cet email est déjà pris !!",
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("OK",
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "prata")),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  initState() {
    super.initState();
    dbService = DbService();
    emailFieldController = TextEditingController();
    loginFieldController = TextEditingController();
    passFieldController = TextEditingController();
  }

  String _validateLogin(String value) {
    if (value.length == 0) {
      return "Veuillez entrer votre login";
    }
    return null;
  }

  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  void clearFields() {
    emailFieldController.text = '';
    loginFieldController.text = '';
    passFieldController.text = '';
  }

  String _validateEmail(String value) {
    if (value.length == 0) {
      return "Veuillez entrer votre email";
    }
    if (validateEmail(value) == false) {
      return "Votre email n'est pas valide";
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value.length == 0) {
      return "Veuillez entrer un mot de passe";
    }
    if (value.length < 8) {
      return "Le mot de passe doit faire 8 caractères au moins";
    }
    return null;
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
                radius: 50,
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              SizedBox(height: 48.0),
              Form(
                  key: _formKey,
                  // ignore: deprecated_member_use
                  autovalidate: _autoValidate,
                  child: Column(children: <Widget>[
                    TextFormField(
                        controller: emailFieldController,
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onSaved: (value) {
                          email = value;
                        },
                        decoration:
                            kTextFieldDecoration.copyWith(hintText: 'Email'),
                        validator: _validateEmail),
                    SizedBox(height: 20.0),
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
                        validator: _validatePassword),
                    SizedBox(height: 50.0),
                    RoundedButton(
                        title: "S'INSCRIRE",
                        color: Color(0xFF262283),
                        width: 300.0,
                        onPressed: () {
                          verifyForm(context);
                        }),
                    SizedBox(height: 25.0),
                    Center(
                        child: FlatButton(
                      child: Text("CONNEXION",
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Color(0xFF262283),
                              fontWeight: FontWeight.bold,
                              fontFamily: "prata")),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AuthScreen(size: 3)));
                      },
                    )),
                    SizedBox(height: 25.0),
                  ]))
            ],
          ),
        ));
  }
}
