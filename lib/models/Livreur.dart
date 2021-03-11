class Livreur {
  int _id;
  String _login;
  String _password;

  Livreur(
    this._id,
    this._login,
    this._password,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      "_id": _id,
      "login": _login,
      "password": _password,
    };

    return map;
  }

  Livreur.fromMap(Map<String, dynamic> map) {
    _id = map["_id"];
    _login = map["login"];
    _password = map["password"];
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get login => _login;

  set login(String value) {
    _login = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
