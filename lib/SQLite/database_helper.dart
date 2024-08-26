import 'package:flutter/material.dart';
import 'package:itech/JSON/users.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseHelper {
  final databaseName = "auth.db";

  // Tables

  String user = '''
    CREATE TABLE users(
      userid INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT UNIQE,
      email TEXT,
      password TEXT

    )
''';

  //  Our  connection is ready
  Future<Database> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = databasePath + databaseName;

    return openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute(user);
    });
  }

  // Function methods

  // Authentication

  // Future<bool> authenticate(Users usr) async {
  //   final Database db = await initDB();
  //   var result = await db.rawQuery(
  //       "select * from users where email = '${usr.email}' and password = '${usr.password}'");
  //   if(result.isNotEmpty){
  //     return true;
  //   }else{
  //     return false;
  //   }
  // }

  Future<bool> authenticate(Users usr) async {
    final Database db = await initDB();
    var res = await db.rawQuery(
        "select * from users where email = '${usr.email}' and password = '${usr.password}'");
    if(res.isNotEmpty){
      return true;
    }else{
      return false;
    }
  }

  // sign up
  Future<int> createUser(Users usr) async {
    final Database db = await initDB();
    return db.insert("users", usr.toMap());
  }

  // Get current users details
  Future<Users?> getUser(String email) async {
    final Database db = await initDB();
    var result = await db.query("users", where: "email = '$email'");
    if (result.isNotEmpty) {
      return Users.fromMap(result.first);
    }
    return null;
  }
}
