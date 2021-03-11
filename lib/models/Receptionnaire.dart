class Receptionnaire {
  int _id;
  String _nomPrenom;
  String _customerPhone;

  Receptionnaire(
    this._id,
    this._nomPrenom,
    this._customerPhone,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      "_id": _id,
      "nomPrenom": _nomPrenom,
      "customerPhone": _customerPhone,
    };

    return map;
  }

  Receptionnaire.fromMap(Map<String, dynamic> map) {
    _id = map["_id"];
    _nomPrenom = map["nomPrenom"];
    _customerPhone = map["customerPhone"];
  }

  String get customerPhone => _customerPhone;

  set customerPhone(String value) {
    _customerPhone = value;
  }

  String get nomPrenom => _nomPrenom;

  set nomPrenom(String value) {
    _nomPrenom = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
