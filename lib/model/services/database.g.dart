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
            'CREATE TABLE IF NOT EXISTS `Post` (`userId` INTEGER, `id` INTEGER, `title` TEXT, `body` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CatImage` (`id` TEXT, `url` TEXT, `width` INTEGER, `height` INTEGER, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Breed` (`weight` TEXT, `id` TEXT, `cat_id` TEXT, `name` TEXT, `cfa_url` TEXT, `vetstreet_url` TEXT, `vcahospitals_url` TEXT, `temperament` TEXT, `origin` TEXT, `country_codes` TEXT, `countryCode` TEXT, `description` TEXT, `life_span` TEXT, `indoor` INTEGER, `lap` INTEGER, `alt_names` TEXT, `adaptability` INTEGER, `affection_level` INTEGER, `child_friendly` INTEGER, `dog_friendly` INTEGER, `energy_level` INTEGER, `grooming` INTEGER, `health_issues` INTEGER, `intelligence` INTEGER, `shedding_level` INTEGER, `social_needs` INTEGER, `stranger_friendly` INTEGER, `vocalisation` INTEGER, `experimental` INTEGER, `hairless` INTEGER, `natural` INTEGER, `rare` INTEGER, `rex` INTEGER, `suppressed_tail` INTEGER, `short_legs` INTEGER, `wikipedia_url` TEXT, `hypoallergenic` INTEGER, `reference_image_id` TEXT, FOREIGN KEY (`cat_id`) REFERENCES `CatImage` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Weight` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `imperial` TEXT, `metric` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CatImageWithBreed` (`weight` TEXT, `id` TEXT, `url` TEXT, `width` INTEGER, `height` INTEGER, `name` TEXT, `cfa_url` TEXT, `vetstreet_url` TEXT, `vcahospitals_url` TEXT, `temperament` TEXT, `origin` TEXT, `country_codes` TEXT, `countryCode` TEXT, `description` TEXT, `life_span` TEXT, `indoor` INTEGER, `lap` INTEGER, `alt_names` TEXT, `adaptability` INTEGER, `affection_level` INTEGER, `child_friendly` INTEGER, `dog_friendly` INTEGER, `energy_level` INTEGER, `grooming` INTEGER, `health_issues` INTEGER, `intelligence` INTEGER, `shedding_level` INTEGER, `social_needs` INTEGER, `stranger_friendly` INTEGER, `vocalisation` INTEGER, `experimental` INTEGER, `hairless` INTEGER, `natural` INTEGER, `rare` INTEGER, `rex` INTEGER, `suppressed_tail` INTEGER, `short_legs` INTEGER, `wikipedia_url` TEXT, `hypoallergenic` INTEGER, `reference_image_id` TEXT, PRIMARY KEY (`id`))');

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
    return _queryAdapter.queryList('Select * From Post',
        mapper: (Map<String, Object?> row) => Post(
            userId: row['userId'] as int?,
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?));
  }

  @override
  Future<Post?> getPostsById(int id) async {
    return _queryAdapter.query('Select * From Post as p Where p.`id` = ?1',
        mapper: (Map<String, Object?> row) => Post(
            userId: row['userId'] as int?,
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?),
        arguments: [id]);
  }

  @override
  Future<void> deletePost(int id) async {
    await _queryAdapter.queryNoReturn('delete from Post as p where p.`id` = ?1',
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
  Future<void> insertPost(Post post) async {
    await _postInsertionAdapter.insert(post, OnConflictStrategy.ignore);
  }

  @override
  Future<void> insertListPosts(List<Post> posts) async {
    await _postInsertionAdapter.insertList(posts, OnConflictStrategy.abort);
  }

  @override
  Future<void> updatePost(Post post) async {
    await _postUpdateAdapter.update(post, OnConflictStrategy.replace);
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
                  'width': item.width,
                  'height': item.height
                }),
        _breedInsertionAdapter = InsertionAdapter(
            database,
            'Breed',
            (Breed item) => <String, Object?>{
                  'weight': _weightConverter.encode(item.weight),
                  'id': item.id,
                  'cat_id': item.catId,
                  'name': item.name,
                  'cfa_url': item.cfaUrl,
                  'vetstreet_url': item.vetstreetUrl,
                  'vcahospitals_url': item.vcahospitalsUrl,
                  'temperament': item.temperament,
                  'origin': item.origin,
                  'country_codes': item.countryCodes,
                  'countryCode': item.countryCode,
                  'description': item.description,
                  'life_span': item.lifeSpan,
                  'indoor': item.indoor,
                  'lap': item.lap,
                  'alt_names': item.altNames,
                  'adaptability': item.adaptability,
                  'affection_level': item.affectionLevel,
                  'child_friendly': item.childFriendly,
                  'dog_friendly': item.dogFriendly,
                  'energy_level': item.energyLevel,
                  'grooming': item.grooming,
                  'health_issues': item.healthIssues,
                  'intelligence': item.intelligence,
                  'shedding_level': item.sheddingLevel,
                  'social_needs': item.socialNeeds,
                  'stranger_friendly': item.strangerFriendly,
                  'vocalisation': item.vocalisation,
                  'experimental': item.experimental,
                  'hairless': item.hairless,
                  'natural': item.natural,
                  'rare': item.rare,
                  'rex': item.rex,
                  'suppressed_tail': item.suppressedTail,
                  'short_legs': item.shortLegs,
                  'wikipedia_url': item.wikipediaUrl,
                  'hypoallergenic': item.hypoallergenic,
                  'reference_image_id': item.referenceImageId
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CatImage> _catImageInsertionAdapter;

  final InsertionAdapter<Breed> _breedInsertionAdapter;

  @override
  Future<List<CatImageWithBreed>> getCatImagesFromDB() async {
    return _queryAdapter.queryList(
        'select * from CatImage as c inner join Breed as b on b.`cat_id` = c.`id`',
        mapper: (Map<String, Object?> row) => CatImageWithBreed(
            url: row['url'] as String?,
            width: row['width'] as int?,
            height: row['height'] as int?,
            weight: _weightConverter.decode(row['weight'] as String),
            id: row['id'] as String?,
            name: row['name'] as String?,
            cfaUrl: row['cfa_url'] as String?,
            vetstreetUrl: row['vetstreet_url'] as String?,
            vcahospitalsUrl: row['vcahospitals_url'] as String?,
            temperament: row['temperament'] as String?,
            origin: row['origin'] as String?,
            countryCodes: row['country_codes'] as String?,
            countryCode: row['countryCode'] as String?,
            description: row['description'] as String?,
            lifeSpan: row['life_span'] as String?,
            indoor: row['indoor'] as int?,
            lap: row['lap'] as int?,
            altNames: row['alt_names'] as String?,
            adaptability: row['adaptability'] as int?,
            affectionLevel: row['affection_level'] as int?,
            childFriendly: row['child_friendly'] as int?,
            dogFriendly: row['dog_friendly'] as int?,
            energyLevel: row['energy_level'] as int?,
            grooming: row['grooming'] as int?,
            healthIssues: row['health_issues'] as int?,
            intelligence: row['intelligence'] as int?,
            sheddingLevel: row['shedding_level'] as int?,
            socialNeeds: row['social_needs'] as int?,
            strangerFriendly: row['stranger_friendly'] as int?,
            vocalisation: row['vocalisation'] as int?,
            experimental: row['experimental'] as int?,
            hairless: row['hairless'] as int?,
            natural: row['natural'] as int?,
            rare: row['rare'] as int?,
            rex: row['rex'] as int?,
            suppressedTail: row['suppressed_tail'] as int?,
            shortLegs: row['short_legs'] as int?,
            wikipediaUrl: row['wikipedia_url'] as String?,
            hypoallergenic: row['hypoallergenic'] as int?,
            referenceImageId: row['reference_image_id'] as String?));
  }

  @override
  Future<void> insertCatImage(List<CatImage> catImage) async {
    await _catImageInsertionAdapter.insertList(
        catImage, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertBreed(List<Breed> catImage) async {
    await _breedInsertionAdapter.insertList(
        catImage, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _weightConverter = WeightConverter();
