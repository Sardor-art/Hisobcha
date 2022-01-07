import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'dao/planning_dao.dart';
import 'entity/planning.dart';

part 'app_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Planning])
abstract class AppDatabase extends FloorDatabase {
  PlanningDao get planningDao;

  static AppDatabase? instance;

  static Future<void> init() async {
    instance = await $FloorAppDatabase.databaseBuilder('hisobcha.db').build();
  }
}
