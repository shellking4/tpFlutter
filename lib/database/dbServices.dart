import 'dart:core';
import '../database/database.dart';

class DbService {
  DeliveryAppDb appDb = DeliveryAppDb();

  Future<int> insertLivreur(String login, String password) {
    return appDb.createEntry(login, password);
  }
}
