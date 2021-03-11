// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Livreur extends DataClass implements Insertable<Livreur> {
  final int id;
  final String login;
  final String password;
  Livreur({@required this.id, @required this.login, @required this.password});
  factory Livreur.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Livreur(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
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
      login: serializer.fromJson<String>(json['login']),
      password: serializer.fromJson<String>(json['password']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'login': serializer.toJson<String>(login),
      'password': serializer.toJson<String>(password),
    };
  }

  Livreur copyWith({int id, String login, String password}) => Livreur(
        id: id ?? this.id,
        login: login ?? this.login,
        password: password ?? this.password,
      );
  @override
  String toString() {
    return (StringBuffer('Livreur(')
          ..write('id: $id, ')
          ..write('login: $login, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(login.hashCode, password.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Livreur &&
          other.id == this.id &&
          other.login == this.login &&
          other.password == this.password);
}

class LivreursCompanion extends UpdateCompanion<Livreur> {
  final Value<int> id;
  final Value<String> login;
  final Value<String> password;
  const LivreursCompanion({
    this.id = const Value.absent(),
    this.login = const Value.absent(),
    this.password = const Value.absent(),
  });
  LivreursCompanion.insert({
    this.id = const Value.absent(),
    @required String login,
    @required String password,
  })  : login = Value(login),
        password = Value(password);
  static Insertable<Livreur> custom({
    Expression<int> id,
    Expression<String> login,
    Expression<String> password,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (login != null) 'login': login,
      if (password != null) 'password': password,
    });
  }

  LivreursCompanion copyWith(
      {Value<int> id, Value<String> login, Value<String> password}) {
    return LivreursCompanion(
      id: id ?? this.id,
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
  List<GeneratedColumn> get $columns => [id, login, password];
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
  Receptionnaires _receptionnaires;
  Receptionnaires get receptionnaires =>
      _receptionnaires ??= Receptionnaires(this);
  Future<int> createEntry(String login, String password) {
    return customInsert(
      'INSERT INTO livreurs (login, password) VALUES (:login, :password)',
      variables: [Variable.withString(login), Variable.withString(password)],
      updates: {livreurs},
    );
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [livreurs, receptionnaires];
}
