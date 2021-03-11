class Order {
  int _id;
  String _nomPrenom;
  String _nomProduit;
  String _orderStat;
  String _customerPhone;
  int _total;

  Order(this._id, this._nomPrenom, this._nomProduit, this._customerPhone,
      this._total, this._orderStat);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      "_id": _id,
      "nomPrenom": _nomPrenom,
      "nomProduit": _nomProduit,
      "etatLivraison": _orderStat,
      "tel": _customerPhone,
      "coutTotal": _total,
    };

    return map;
  }

  Order.fromMap(Map<String, dynamic> map) {
    _id = map["_id"];
    _nomPrenom = map["nomPrenom"];
    _nomProduit = map["nomProduit"];
    _orderStat = map["etatLivraison"];
    _customerPhone = map["tel"];
    _total = map["coutTotal"];
  }

  int get total => _total;

  set total(int value) {
    _total = value;
  }

  String get customerPhone => _customerPhone;

  set customerPhone(String value) {
    _customerPhone = value;
  }

  String get orderStat => _orderStat;

  set orderStat(String value) {
    _orderStat = value;
  }

  String get nomProduit => _nomProduit;

  set nomProduit(String value) {
    _nomProduit = value;
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
