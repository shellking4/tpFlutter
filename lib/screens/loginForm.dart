import 'dart:async';
import 'package:delivery_app/service/database.dart';
import 'package:delivery_app/models/Livreur.dart';
import 'package:delivery_app/models/Order.dart';
import 'package:delivery_app/models/Receptionnaire.dart';
import 'package:delivery_app/utils/button.dart';
import 'package:delivery_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:delivery_app/screens/livreurDash.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String login;
  String password;
  bool _autoValidate = false;
  TextEditingController loginFieldController;
  TextEditingController passFieldController;
  final _formKey = GlobalKey<FormState>();
  bool _isInAsyncCall = false;
  // ignore: unused_field
  bool _isInvalidAsyncLogin = false;
  // ignore: unused_field
  bool _isInvalidAsyncPass = false;
  DatabaseProvider db = DatabaseProvider();
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

      db.getLivreur(0).then((fetchedLivreur) {
        setState(() {
          if (fetchedLivreur != null) {
            this.livreur = fetchedLivreur;
          }
        });
      });
      if (login == livreur.login && password == livreur.password) {
        setState(() {
          _isInAsyncCall = false;
        });
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => LivreurDash()));
      } else {
        _isInAsyncCall = false;
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
                  "Login ou Mot de passe incorrect",
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
    }
  }

  @override
  initState() {
    super.initState();
    db.create();
    startTime();
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

  loadInformation() async {
    order = new Order(0, "Jordan SMITH", "Volkswaggen", "62798845", 5000, "0");
    livreur = new Livreur(0, "jordan@smith.org", "livreur1", "12345");
    receptionnaire = new Receptionnaire(0, "Jordan SMITH", "62798845");

    await db.insertLivreur(livreur);
    await db.insertOrder(order);
    await db.insertReceptionnaire(receptionnaire);
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
                //child: Icon(Icons.perm_identity, color: Colors.black),
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
                        color: Color(0xFF262283),
                        width: 300.0,
                        onPressed: () {
                          verifyForm(context);
                        }),
                    SizedBox(height: 50.0),
                    Center(
                        child: Text(
                      "Pas de Compte ? Vous enregistrer",
                      style: TextStyle(
                          color: Color(0xFF29434e),
                          fontFamily: "prata",
                          fontWeight: FontWeight.bold),
                    ))
                  ]))
            ],
          ),
        ));
  }
}
