// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Livreur extends DataClass implements Insertable<Livreur> {
  final int id;
  final String email;
  final String login;
  final String password;
  Livreur(
      {@required this.id,
      @required this.email,
      @required this.login,
      @required this.password});
  factory Livreur.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Livreur(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      login:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}login']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || login != null) {
      map['login'] = Variable<String>(login);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    return map;
  }

  LivreursCompanion toCompanion(bool nullToAbsent) {
    return LivreursCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      login:
          login == null && nullToAbsent ? const Value.absent() : Value(login),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
    );
  }

  factory Livreur.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Livreur(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      login: serializer.fromJson<String>(json['login']),
      password: serializer.fromJson<String>(json['password']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'login': serializer.toJson<String>(login),
      'password': serializer.toJson<String>(password),
    };
  }

  Livreur copyWith({int id, String email, String login, String password}) =>
      Livreur(
        id: id ?? this.id,
        email: email ?? this.email,
        login: login ?? this.login,
        password: password ?? this.password,
      );
  @override
  String toString() {
    return (StringBuffer('Livreur(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('login: $login, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(email.hashCode, $mrjc(login.hashCode, password.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Livreur &&
          other.id == this.id &&
          other.email == this.email &&
          other.login == this.login &&
          other.password == this.password);
}

class LivreursCompanion extends UpdateCompanion<Livreur> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> login;
  final Value<String> password;
  const LivreursCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.login = const Value.absent(),
    this.password = const Value.absent(),
  });
  LivreursCompanion.insert({
    this.id = const Value.absent(),
    @required String email,
    @required String login,
    @required String password,
  })  : email = Value(email),
        login = Value(login),
        password = Value(password);
  static Insertable<Livreur> custom({
    Expression<int> id,
    Expression<String> email,
    Expression<String> login,
    Expression<String> password,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (login != null) 'login': login,
      if (password != null) 'password': password,
    });
  }

  LivreursCompanion copyWith(
      {Value<int> id,
      Value<String> email,
      Value<String> login,
      Value<String> password}) {
    return LivreursCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      login: login ?? this.login,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LivreursCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('login: $login, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }
}

class Livreurs extends Table with TableInfo<Livreurs, Livreur> {
  final GeneratedDatabase _db;
  final String _alias;
  Livreurs(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        declaredAsPrimaryKey: true,
        hasAutoIncrement: true,
        $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn('email', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _loginMeta = const VerificationMeta('login');
  GeneratedTextColumn _login;
  GeneratedTextColumn get login => _login ??= _constructLogin();
  GeneratedTextColumn _constructLogin() {
    return GeneratedTextColumn('login', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn('password', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  @override
  List<GeneratedColumn> get $columns => [id, email, login, password];
  @override
  Livreurs get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'livreurs';
  @override
  final String actualTableName = 'livreurs';
  @override
  VerificationContext validateIntegrity(Insertable<Livreur> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('login')) {
      context.handle(
          _loginMeta, login.isAcceptableOrUnknown(data['login'], _loginMeta));
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Livreur map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Livreur.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Livreurs createAlias(String alias) {
    return Livreurs(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Order extends DataClass implements Insertable<Order> {
  final int id;
  final String nomPrenoms;
  final String nomProduit;
  final String orderStat;
  final String customerPhone;
  final int total;
  Order(
      {@required this.id,
      @required this.nomPrenoms,
      @required this.nomProduit,
      @required this.orderStat,
      @required this.customerPhone,
      @required this.total});
  factory Order.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Order(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nomPrenoms: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nomPrenoms']),
      nomProduit: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nomProduit']),
      orderStat: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}orderStat']),
      customerPhone: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}customerPhone']),
      total: intType.mapFromDatabaseResponse(data['${effectivePrefix}total']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nomPrenoms != null) {
      map['nomPrenoms'] = Variable<String>(nomPrenoms);
    }
    if (!nullToAbsent || nomProduit != null) {
      map['nomProduit'] = Variable<String>(nomProduit);
    }
    if (!nullToAbsent || orderStat != null) {
      map['orderStat'] = Variable<String>(orderStat);
    }
    if (!nullToAbsent || customerPhone != null) {
      map['customerPhone'] = Variable<String>(customerPhone);
    }
    if (!nullToAbsent || total != null) {
      map['total'] = Variable<int>(total);
    }
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nomPrenoms: nomPrenoms == null && nullToAbsent
          ? const Value.absent()
          : Value(nomPrenoms),
      nomProduit: nomProduit == null && nullToAbsent
          ? const Value.absent()
          : Value(nomProduit),
      orderStat: orderStat == null && nullToAbsent
          ? const Value.absent()
          : Value(orderStat),
      customerPhone: customerPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(customerPhone),
      total:
          total == null && nullToAbsent ? const Value.absent() : Value(total),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<int>(json['id']),
      nomPrenoms: serializer.fromJson<String>(json['nomPrenoms']),
      nomProduit: serializer.fromJson<String>(json['nomProduit']),
      orderStat: serializer.fromJson<String>(json['orderStat']),
      customerPhone: serializer.fromJson<String>(json['customerPhone']),
      total: serializer.fromJson<int>(json['total']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nomPrenoms': serializer.toJson<String>(nomPrenoms),
      'nomProduit': serializer.toJson<String>(nomProduit),
      'orderStat': serializer.toJson<String>(orderStat),
      'customerPhone': serializer.toJson<String>(customerPhone),
      'total': serializer.toJson<int>(total),
    };
  }

  Order copyWith(
          {int id,
          String nomPrenoms,
          String nomProduit,
          String orderStat,
          String customerPhone,
          int total}) =>
      Order(
        id: id ?? this.id,
        nomPrenoms: nomPrenoms ?? this.nomPrenoms,
        nomProduit: nomProduit ?? this.nomProduit,
        orderStat: orderStat ?? this.orderStat,
        customerPhone: customerPhone ?? this.customerPhone,
        total: total ?? this.total,
      );
  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('nomPrenoms: $nomPrenoms, ')
          ..write('nomProduit: $nomProduit, ')
          ..write('orderStat: $orderStat, ')
          ..write('customerPhone: $customerPhone, ')
          ..write('total: $total')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nomPrenoms.hashCode,
          $mrjc(
              nomProduit.hashCode,
              $mrjc(orderStat.hashCode,
                  $mrjc(customerPhone.hashCode, total.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.nomPrenoms == this.nomPrenoms &&
          other.nomProduit == this.nomProduit &&
          other.orderStat == this.orderStat &&
          other.customerPhone == this.customerPhone &&
          other.total == this.total);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<int> id;
  final Value<String> nomPrenoms;
  final Value<String> nomProduit;
  final Value<String> orderStat;
  final Value<String> customerPhone;
  final Value<int> total;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.nomPrenoms = const Value.absent(),
    this.nomProduit = const Value.absent(),
    this.orderStat = const Value.absent(),
    this.customerPhone = const Value.absent(),
    this.total = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    @required String nomPrenoms,
    @required String nomProduit,
    @required String orderStat,
    @required String customerPhone,
    @required int total,
  })  : nomPrenoms = Value(nomPrenoms),
        nomProduit = Value(nomProduit),
        orderStat = Value(orderStat),
        customerPhone = Value(customerPhone),
        total = Value(total);
  static Insertable<Order> custom({
    Expression<int> id,
    Expression<String> nomPrenoms,
    Expression<String> nomProduit,
    Expression<String> orderStat,
    Expression<String> customerPhone,
    Expression<int> total,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nomPrenoms != null) 'nomPrenoms': nomPrenoms,
      if (nomProduit != null) 'nomProduit': nomProduit,
      if (orderStat != null) 'orderStat': orderStat,
      if (customerPhone != null) 'customerPhone': customerPhone,
      if (total != null) 'total': total,
    });
  }

  OrdersCompanion copyWith(
      {Value<int> id,
      Value<String> nomPrenoms,
      Value<String> nomProduit,
      Value<String> orderStat,
      Value<String> customerPhone,
      Value<int> total}) {
    return OrdersCompanion(
      id: id ?? this.id,
      nomPrenoms: nomPrenoms ?? this.nomPrenoms,
      nomProduit: nomProduit ?? this.nomProduit,
      orderStat: orderStat ?? this.orderStat,
      customerPhone: customerPhone ?? this.customerPhone,
      total: total ?? this.total,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nomPrenoms.present) {
      map['nomPrenoms'] = Variable<String>(nomPrenoms.value);
    }
    if (nomProduit.present) {
      map['nomProduit'] = Variable<String>(nomProduit.value);
    }
    if (orderStat.present) {
      map['orderStat'] = Variable<String>(orderStat.value);
    }
    if (customerPhone.present) {
      map['customerPhone'] = Variable<String>(customerPhone.value);
    }
    if (total.present) {
      map['total'] = Variable<int>(total.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('nomPrenoms: $nomPrenoms, ')
          ..write('nomProduit: $nomProduit, ')
          ..write('orderStat: $orderStat, ')
          ..write('customerPhone: $customerPhone, ')
          ..write('total: $total')
          ..write(')'))
        .toString();
  }
}

class Orders extends Table with TableInfo<Orders, Order> {
  final GeneratedDatabase _db;
  final String _alias;
  Orders(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        declaredAsPrimaryKey: true,
        hasAutoIncrement: true,
        $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  }

  final VerificationMeta _nomPrenomsMeta = const VerificationMeta('nomPrenoms');
  GeneratedTextColumn _nomPrenoms;
  GeneratedTextColumn get nomPrenoms => _nomPrenoms ??= _constructNomPrenoms();
  GeneratedTextColumn _constructNomPrenoms() {
    return GeneratedTextColumn('nomPrenoms', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _nomProduitMeta = const VerificationMeta('nomProduit');
  GeneratedTextColumn _nomProduit;
  GeneratedTextColumn get nomProduit => _nomProduit ??= _constructNomProduit();
  GeneratedTextColumn _constructNomProduit() {
    return GeneratedTextColumn('nomProduit', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _orderStatMeta = const VerificationMeta('orderStat');
  GeneratedTextColumn _orderStat;
  GeneratedTextColumn get orderStat => _orderStat ??= _constructOrderStat();
  GeneratedTextColumn _constructOrderStat() {
    return GeneratedTextColumn('orderStat', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _customerPhoneMeta =
      const VerificationMeta('customerPhone');
  GeneratedTextColumn _customerPhone;
  GeneratedTextColumn get customerPhone =>
      _customerPhone ??= _constructCustomerPhone();
  GeneratedTextColumn _constructCustomerPhone() {
    return GeneratedTextColumn('customerPhone', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _totalMeta = const VerificationMeta('total');
  GeneratedIntColumn _total;
  GeneratedIntColumn get total => _total ??= _constructTotal();
  GeneratedIntColumn _constructTotal() {
    return GeneratedIntColumn('total', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, nomPrenoms, nomProduit, orderStat, customerPhone, total];
  @override
  Orders get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'orders';
  @override
  final String actualTableName = 'orders';
  @override
  VerificationContext validateIntegrity(Insertable<Order> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nomPrenoms')) {
      context.handle(
          _nomPrenomsMeta,
          nomPrenoms.isAcceptableOrUnknown(
              data['nomPrenoms'], _nomPrenomsMeta));
    } else if (isInserting) {
      context.missing(_nomPrenomsMeta);
    }
    if (data.containsKey('nomProduit')) {
      context.handle(
          _nomProduitMeta,
          nomProduit.isAcceptableOrUnknown(
              data['nomProduit'], _nomProduitMeta));
    } else if (isInserting) {
      context.missing(_nomProduitMeta);
    }
    if (data.containsKey('orderStat')) {
      context.handle(_orderStatMeta,
          orderStat.isAcceptableOrUnknown(data['orderStat'], _orderStatMeta));
    } else if (isInserting) {
      context.missing(_orderStatMeta);
    }
    if (data.containsKey('customerPhone')) {
      context.handle(
          _customerPhoneMeta,
          customerPhone.isAcceptableOrUnknown(
              data['customerPhone'], _customerPhoneMeta));
    } else if (isInserting) {
      context.missing(_customerPhoneMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total'], _totalMeta));
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Order.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Orders createAlias(String alias) {
    return Orders(_db, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY ("id")'];
  @override
  bool get dontWriteConstraints => true;
}

class Receptionnaire extends DataClass implements Insertable<Receptionnaire> {
  final int id;
  final String nomPrenoms;
  final String telephone;
  Receptionnaire(
      {@required this.id, @required this.nomPrenoms, @required this.telephone});
  factory Receptionnaire.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Receptionnaire(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nomPrenoms: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nomPrenoms']),
      telephone: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}telephone']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nomPrenoms != null) {
      map['nomPrenoms'] = Variable<String>(nomPrenoms);
    }
    if (!nullToAbsent || telephone != null) {
      map['telephone'] = Variable<String>(telephone);
    }
    return map;
  }

  ReceptionnairesCompanion toCompanion(bool nullToAbsent) {
    return ReceptionnairesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nomPrenoms: nomPrenoms == null && nullToAbsent
          ? const Value.absent()
          : Value(nomPrenoms),
      telephone: telephone == null && nullToAbsent
          ? const Value.absent()
          : Value(telephone),
    );
  }

  factory Receptionnaire.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Receptionnaire(
      id: serializer.fromJson<int>(json['id']),
      nomPrenoms: serializer.fromJson<String>(json['nomPrenoms']),
      telephone: serializer.fromJson<String>(json['telephone']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nomPrenoms': serializer.toJson<String>(nomPrenoms),
      'telephone': serializer.toJson<String>(telephone),
    };
  }

  Receptionnaire copyWith({int id, String nomPrenoms, String telephone}) =>
      Receptionnaire(
        id: id ?? this.id,
        nomPrenoms: nomPrenoms ?? this.nomPrenoms,
        telephone: telephone ?? this.telephone,
      );
  @override
  String toString() {
    return (StringBuffer('Receptionnaire(')
          ..write('id: $id, ')
          ..write('nomPrenoms: $nomPrenoms, ')
          ..write('telephone: $telephone')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(nomPrenoms.hashCode, telephone.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Receptionnaire &&
          other.id == this.id &&
          other.nomPrenoms == this.nomPrenoms &&
          other.telephone == this.telephone);
}

class ReceptionnairesCompanion extends UpdateCompanion<Receptionnaire> {
  final Value<int> id;
  final Value<String> nomPrenoms;
  final Value<String> telephone;
  const ReceptionnairesCompanion({
    this.id = const Value.absent(),
    this.nomPrenoms = const Value.absent(),
    this.telephone = const Value.absent(),
  });
  ReceptionnairesCompanion.insert({
    this.id = const Value.absent(),
    @required String nomPrenoms,
    @required String telephone,
  })  : nomPrenoms = Value(nomPrenoms),
        telephone = Value(telephone);
  static Insertable<Receptionnaire> custom({
    Expression<int> id,
    Expression<String> nomPrenoms,
    Expression<String> telephone,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nomPrenoms != null) 'nomPrenoms': nomPrenoms,
      if (telephone != null) 'telephone': telephone,
    });
  }

  ReceptionnairesCompanion copyWith(
      {Value<int> id, Value<String> nomPrenoms, Value<String> telephone}) {
    return ReceptionnairesCompanion(
      id: id ?? this.id,
      nomPrenoms: nomPrenoms ?? this.nomPrenoms,
      telephone: telephone ?? this.telephone,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nomPrenoms.present) {
      map['nomPrenoms'] = Variable<String>(nomPrenoms.value);
    }
    if (telephone.present) {
      map['telephone'] = Variable<String>(telephone.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReceptionnairesCompanion(')
          ..write('id: $id, ')
          ..write('nomPrenoms: $nomPrenoms, ')
          ..write('telephone: $telephone')
          ..write(')'))
        .toString();
  }
}

class Receptionnaires extends Table
    with TableInfo<Receptionnaires, Receptionnaire> {
  final GeneratedDatabase _db;
  final String _alias;
  Receptionnaires(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        declaredAsPrimaryKey: true,
        hasAutoIncrement: true,
        $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  }

  final VerificationMeta _nomPrenomsMeta = const VerificationMeta('nomPrenoms');
  GeneratedTextColumn _nomPrenoms;
  GeneratedTextColumn get nomPrenoms => _nomPrenoms ??= _constructNomPrenoms();
  GeneratedTextColumn _constructNomPrenoms() {
    return GeneratedTextColumn('nomPrenoms', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _telephoneMeta = const VerificationMeta('telephone');
  GeneratedTextColumn _telephone;
  GeneratedTextColumn get telephone => _telephone ??= _constructTelephone();
  GeneratedTextColumn _constructTelephone() {
    return GeneratedTextColumn('telephone', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  @override
  List<GeneratedColumn> get $columns => [id, nomPrenoms, telephone];
  @override
  Receptionnaires get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'receptionnaires';
  @override
  final String actualTableName = 'receptionnaires';
  @override
  VerificationContext validateIntegrity(Insertable<Receptionnaire> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nomPrenoms')) {
      context.handle(
          _nomPrenomsMeta,
          nomPrenoms.isAcceptableOrUnknown(
              data['nomPrenoms'], _nomPrenomsMeta));
    } else if (isInserting) {
      context.missing(_nomPrenomsMeta);
    }
    if (data.containsKey('telephone')) {
      context.handle(_telephoneMeta,
          telephone.isAcceptableOrUnknown(data['telephone'], _telephoneMeta));
    } else if (isInserting) {
      context.missing(_telephoneMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Receptionnaire map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Receptionnaire.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Receptionnaires createAlias(String alias) {
    return Receptionnaires(_db, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY ("id")'];
  @override
  bool get dontWriteConstraints => true;
}

abstract class _$DeliveryAppDb extends GeneratedDatabase {
  _$DeliveryAppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  Livreurs _livreurs;
  Livreurs get livreurs => _livreurs ??= Livreurs(this);
  Orders _orders;
  Orders get orders => _orders ??= Orders(this);
  Receptionnaires _receptionnaires;
  Receptionnaires get receptionnaires =>
      _receptionnaires ??= Receptionnaires(this);
  Future<int> insertLivreur(String email, String login, String password) {
    return customInsert(
      'INSERT INTO livreurs (email, login, password) VALUES (:email, :login, :password)',
      variables: [
        Variable.withString(email),
        Variable.withString(login),
        Variable.withString(password)
      ],
      updates: {livreurs},
    );
  }

  Selectable<Livreur> getLivreurByEmail(String email) {
    return customSelect('SELECT * FROM livreurs WHERE email = :email',
        variables: [Variable.withString(email)],
        readsFrom: {livreurs}).map(livreurs.mapFromRow);
  }

  Selectable<Livreur> getLivreurByLoginAndPassword(
      String login, String password) {
    return customSelect(
        'SELECT *FROM livreurs WHERE login = :login AND password = :password',
        variables: [Variable.withString(login), Variable.withString(password)],
        readsFrom: {livreurs}).map(livreurs.mapFromRow);
  }

  Selectable<Livreur> getLivreurByLogin(String login) {
    return customSelect('SELECT *FROM livreurs WHERE login = :login',
        variables: [Variable.withString(login)],
        readsFrom: {livreurs}).map(livreurs.mapFromRow);
  }

  Selectable<Livreur> getAllLivreurs() {
    return customSelect('SELECT * FROM livreurs',
        variables: [], readsFrom: {livreurs}).map(livreurs.mapFromRow);
  }

  Future<int> insertOrder(String nomPrenoms, String nomProduit,
      String orderStat, String customerPhone, int total) {
    return customInsert(
      'INSERT INTO orders (nomPrenoms, nomProduit, orderStat, customerPhone, total) VALUES (:nomPrenoms, :nomProduit, :orderStat, :customerPhone, :total)',
      variables: [
        Variable.withString(nomPrenoms),
        Variable.withString(nomProduit),
        Variable.withString(orderStat),
        Variable.withString(customerPhone),
        Variable.withInt(total)
      ],
      updates: {orders},
    );
  }

  Selectable<Order> getAllOrders() {
    return customSelect('SELECT * FROM orders',
        variables: [], readsFrom: {orders}).map(orders.mapFromRow);
  }

  Future<int> insertReceptionnaire(String nomPrenoms, String telephone) {
    return customInsert(
      'INSERT INTO receptionnaires (nomPrenoms, telephone) VALUES (:nomPrenoms, :telephone)',
      variables: [
        Variable.withString(nomPrenoms),
        Variable.withString(telephone)
      ],
      updates: {receptionnaires},
    );
  }

  Selectable<Receptionnaire> getAllReceptionnaires() {
    return customSelect('SELECT * FROM receptionnaires',
        variables: [],
        readsFrom: {receptionnaires}).map(receptionnaires.mapFromRow);
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [livreurs, orders, receptionnaires];
}
