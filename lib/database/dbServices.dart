import 'dart:core';
import '../database/database.dart';

class DbService {
  DeliveryAppDb appDb = DeliveryAppDb();

  Future<int> insertLivreur(String email, String login, String password) {
    return appDb.insertLivreur(email, login, password);
  }

  Future<Livreur> getLivreurByEmail(String email) {
    return appDb.getLivreurByEmail(email).getSingle();
  }

  Future<Livreur> getLivreurByLoginAndPassword(String login, String password) {
    return appDb.getLivreurByLoginAndPassword(login, password).getSingle();
  }

  Future<List<Livreur>> getAllLivreurs() {
    return appDb.getAllLivreurs().get();
  }

  Future<int> insertOrder(String nomPrenoms, String nomProduit,
      String orderStat, String customerPhone, int total) {
    return appDb.insertOrder(
        nomPrenoms, nomProduit, orderStat, customerPhone, total);
  }

  Future<int> insertRecepionnaire(String nomPrenoms, String telephone) {
    return appDb.insertReceptionnaire(nomPrenoms, telephone);
  }
}
