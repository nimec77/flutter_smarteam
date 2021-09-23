// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Credential extends DataClass implements Insertable<Credential> {
  final String sid;
  final String username;
  final String password;
  Credential(
      {required this.sid, required this.username, required this.password});
  factory Credential.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Credential(
      sid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sid'])!,
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username'])!,
      password: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}password'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['sid'] = Variable<String>(sid);
    map['username'] = Variable<String>(username);
    map['password'] = Variable<String>(password);
    return map;
  }

  CredentialsCompanion toCompanion(bool nullToAbsent) {
    return CredentialsCompanion(
      sid: Value(sid),
      username: Value(username),
      password: Value(password),
    );
  }

  factory Credential.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Credential(
      sid: serializer.fromJson<String>(json['sid']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sid': serializer.toJson<String>(sid),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
    };
  }

  Credential copyWith({String? sid, String? username, String? password}) =>
      Credential(
        sid: sid ?? this.sid,
        username: username ?? this.username,
        password: password ?? this.password,
      );
  @override
  String toString() {
    return (StringBuffer('Credential(')
          ..write('sid: $sid, ')
          ..write('username: $username, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(sid.hashCode, $mrjc(username.hashCode, password.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Credential &&
          other.sid == this.sid &&
          other.username == this.username &&
          other.password == this.password);
}

class CredentialsCompanion extends UpdateCompanion<Credential> {
  final Value<String> sid;
  final Value<String> username;
  final Value<String> password;
  const CredentialsCompanion({
    this.sid = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
  });
  CredentialsCompanion.insert({
    required String sid,
    required String username,
    required String password,
  })  : sid = Value(sid),
        username = Value(username),
        password = Value(password);
  static Insertable<Credential> custom({
    Expression<String>? sid,
    Expression<String>? username,
    Expression<String>? password,
  }) {
    return RawValuesInsertable({
      if (sid != null) 'sid': sid,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
    });
  }

  CredentialsCompanion copyWith(
      {Value<String>? sid, Value<String>? username, Value<String>? password}) {
    return CredentialsCompanion(
      sid: sid ?? this.sid,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sid.present) {
      map['sid'] = Variable<String>(sid.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CredentialsCompanion(')
          ..write('sid: $sid, ')
          ..write('username: $username, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }
}

class $CredentialsTable extends Credentials
    with TableInfo<$CredentialsTable, Credential> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CredentialsTable(this._db, [this._alias]);
  final VerificationMeta _sidMeta = const VerificationMeta('sid');
  late final GeneratedColumn<String?> sid = GeneratedColumn<String?>(
      'sid', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 256),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  late final GeneratedColumn<String?> username = GeneratedColumn<String?>(
      'username', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 100),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  late final GeneratedColumn<String?> password = GeneratedColumn<String?>(
      'password', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 256),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [sid, username, password];
  @override
  String get aliasedName => _alias ?? 'credentials';
  @override
  String get actualTableName => 'credentials';
  @override
  VerificationContext validateIntegrity(Insertable<Credential> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sid')) {
      context.handle(
          _sidMeta, sid.isAcceptableOrUnknown(data['sid']!, _sidMeta));
    } else if (isInserting) {
      context.missing(_sidMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sid};
  @override
  Credential map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Credential.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CredentialsTable createAlias(String alias) {
    return $CredentialsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$AppDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $CredentialsTable credentials = $CredentialsTable(this);
  late final CredentialsDao credentialsDao =
      CredentialsDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [credentials];
}
