// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PlanningDao? _planningDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Planning` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `price` TEXT, `from_date` TEXT, `end_date` TEXT, `status` INTEGER)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PlanningDao get planningDao {
    return _planningDaoInstance ??= _$PlanningDao(database, changeListener);
  }
}

class _$PlanningDao extends PlanningDao {
  _$PlanningDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _planningInsertionAdapter = InsertionAdapter(
            database,
            'Planning',
            (Planning item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'price': item.price,
                  'from_date': item.fromDate,
                  'end_date': item.endDate,
                  'status': item.status
                },
            changeListener),
        _planningUpdateAdapter = UpdateAdapter(
            database,
            'Planning',
            ['id'],
            (Planning item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'price': item.price,
                  'from_date': item.fromDate,
                  'end_date': item.endDate,
                  'status': item.status
                },
            changeListener),
        _planningDeletionAdapter = DeletionAdapter(
            database,
            'Planning',
            ['id'],
            (Planning item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'price': item.price,
                  'from_date': item.fromDate,
                  'end_date': item.endDate,
                  'status': item.status
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Planning> _planningInsertionAdapter;

  final UpdateAdapter<Planning> _planningUpdateAdapter;

  final DeletionAdapter<Planning> _planningDeletionAdapter;

  @override
  Stream<List<Planning>> getAllPlanning() {
    return _queryAdapter.queryListStream('SELECT * FROM Planning',
        mapper: (Map<String, Object?> row) => Planning(
            id: row['id'] as int?,
            name: row['name'] as String?,
            price: row['price'] as String?,
            fromDate: row['from_date'] as String?,
            endDate: row['end_date'] as String?,
            status: row['status'] as int?),
        queryableName: 'Planning',
        isView: false);
  }

  @override
  Future<Planning?> findPlanningById(int id) async {
    return _queryAdapter.query('SELECT * FROM Planning WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Planning(
            id: row['id'] as int?,
            name: row['name'] as String?,
            price: row['price'] as String?,
            fromDate: row['from_date'] as String?,
            endDate: row['end_date'] as String?,
            status: row['status'] as int?),
        arguments: [id]);
  }

  @override
  Future<void> insertPlanning(Planning planning) async {
    await _planningInsertionAdapter.insert(planning, OnConflictStrategy.abort);
  }

  @override
  Future<void> updatePlanning(Planning planning) async {
    await _planningUpdateAdapter.update(planning, OnConflictStrategy.abort);
  }

  @override
  Future<void> removePlanning(Planning planning) async {
    await _planningDeletionAdapter.delete(planning);
  }

  @override
  Future<void> removeAllPlanning(List<Planning> planning) async {
    await _planningDeletionAdapter.deleteList(planning);
  }
}
