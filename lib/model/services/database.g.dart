// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

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

  PostDao? _postDaoInstance;

  CatDao? _catDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 2,
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
            'CREATE TABLE IF NOT EXISTS `Post` (`userId` INTEGER, `id` INTEGER, `title` TEXT, `body` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CatImage` (`id` TEXT, `url` TEXT, `breeds` TEXT, `width` INTEGER, `height` INTEGER, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Breed` (`weight` TEXT, `id` TEXT, `cat_id` TEXT, `name` TEXT, `cfa_url` TEXT, `vetstreet_url` TEXT, `vcahospitals_url` TEXT, `temperament` TEXT, `origin` TEXT, `country_codes` TEXT, `countryCode` TEXT, `description` TEXT, `life_span` TEXT, `indoor` INTEGER, `lap` INTEGER, `alt_names` TEXT, `adaptability` INTEGER, `affection_level` INTEGER, `child_friendly` INTEGER, `dog_friendly` INTEGER, `energy_level` INTEGER, `grooming` INTEGER, `health_issues` INTEGER, `intelligence` INTEGER, `shedding_level` INTEGER, `social_needs` INTEGER, `stranger_friendly` INTEGER, `vocalisation` INTEGER, `experimental` INTEGER, `hairless` INTEGER, `natural` INTEGER, `rare` INTEGER, `rex` INTEGER, `suppressed_tail` INTEGER, `short_legs` INTEGER, `wikipedia_url` TEXT, `hypoallergenic` INTEGER, `reference_image_id` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Weight` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `imperial` TEXT, `metric` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PostDao get postDao {
    return _postDaoInstance ??= _$PostDao(database, changeListener);
  }

  @override
  CatDao get catDao {
    return _catDaoInstance ??= _$CatDao(database, changeListener);
  }
}

class _$PostDao extends PostDao {
  _$PostDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _postInsertionAdapter = InsertionAdapter(
            database,
            'Post',
            (Post item) => <String, Object?>{
                  'userId': item.userId,
                  'id': item.id,
                  'title': item.title,
                  'body': item.body
                }),
        _postUpdateAdapter = UpdateAdapter(
            database,
            'Post',
            ['id'],
            (Post item) => <String, Object?>{
                  'userId': item.userId,
                  'id': item.id,
                  'title': item.title,
                  'body': item.body
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Post> _postInsertionAdapter;

  final UpdateAdapter<Post> _postUpdateAdapter;

  @override
  Future<List<Post>> getAllPost() async {
    return _queryAdapter.queryList('select * From Post',
        mapper: (Map<String, Object?> row) => Post(
            userId: row['userId'] as int?,
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?));
  }

  @override
  Future<Post?> getPostsById(int id) async {
    return _queryAdapter.query('select * From Post as p Where p.`id` = ?1',
        mapper: (Map<String, Object?> row) => Post(
            userId: row['userId'] as int?,
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?),
        arguments: [id]);
  }

  @override
  Future<List<Post>> getPostByUserId(int userId) async {
    return _queryAdapter.queryList(
        'select * from Post as p where p.`userId` = ?1',
        mapper: (Map<String, Object?> row) => Post(
            userId: row['userId'] as int?,
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?),
        arguments: [userId]);
  }

  @override
  Future<int?> deletePostById(int id) async {
    return _queryAdapter.query('delete from Post as p where p.`id` = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [id]);
  }

  @override
  Future<int?> deletePosts() async {
    return _queryAdapter.query('delete from Post',
        mapper: (Map<String, Object?> row) => row.values.first as int);
  }

  @override
  Future<int> insertPost(Post post) {
    return _postInsertionAdapter.insertAndReturnId(
        post, OnConflictStrategy.ignore);
  }

  @override
  Future<void> insertListPosts(List<Post> posts) async {
    await _postInsertionAdapter.insertList(posts, OnConflictStrategy.abort);
  }

  @override
  Future<int> updatePost(Post post) {
    return _postUpdateAdapter.updateAndReturnChangedRows(
        post, OnConflictStrategy.replace);
  }
}

class _$CatDao extends CatDao {
  _$CatDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _catImageInsertionAdapter = InsertionAdapter(
            database,
            'CatImage',
            (CatImage item) => <String, Object?>{
                  'id': item.id,
                  'url': item.url,
                  'breeds': _breedConverter.encode(item.breeds),
                  'width': item.width,
                  'height': item.height
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CatImage> _catImageInsertionAdapter;

  @override
  Future<List<CatImage>> getCatImagesFromDB() async {
    return _queryAdapter.queryList('select * from CatImage',
        mapper: (Map<String, Object?> row) => CatImage(
            id: row['id'] as String?,
            url: row['url'] as String?,
            breeds: _breedConverter.decode(row['breeds'] as String),
            width: row['width'] as int?,
            height: row['height'] as int?));
  }

  @override
  Future<String?> getBreedsFromCatImage(String id) async {
    return _queryAdapter.query(
        'select breeds from CatImage as c where c.`id` = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [id]);
  }

  @override
  Future<int?> deleteCatImagesData() async {
    return _queryAdapter.query('delete from CatImage',
        mapper: (Map<String, Object?> row) => row.values.first as int);
  }

  @override
  Future<int?> deleteCatImagesDataById(String id) async {
    return _queryAdapter.query('delete from CatImage as c where c.`id` = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [id]);
  }

  @override
  Future<int?> updateCatImageSize(
    String id,
    double height,
    double width,
  ) async {
    return _queryAdapter.query(
        'update CatImage as c set c.`height` = ?2. c.`width` = ?3 where c.`id` = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [id, height, width]);
  }

  @override
  Future<void> insertCatImage(List<CatImage> catImage) async {
    await _catImageInsertionAdapter.insertList(
        catImage, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _breedConverter = BreedConverter();
final _weightConverter = WeightConverter();
