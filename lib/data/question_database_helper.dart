import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class QuestionAnswerDatabaseHelper {
  static final QuestionAnswerDatabaseHelper _instance =
      QuestionAnswerDatabaseHelper._internal();
  static Database? _database;

  factory QuestionAnswerDatabaseHelper() {
    return _instance;
  }

  QuestionAnswerDatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'questions.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
            CREATE TABLE questions (
              id INTEGER PRIMARY KEY NOT NULL,
              language_id INTEGER NOT NULL,
              question TEXT NOT NULL,
              answer TEXT NOT NULL,
              is_bookmarked INTEGER DEFAULT 0
            );
        ''');

        // Insert dynamic questions for each language
        await db.insert('questions', {
          'id': 1,
          'language_id': 0,
          'question': 'What is a pointer in C?',
          'answer':
              'A pointer is a variable that stores the address of another variable.'
        });
        await db.insert('questions', {
          'id': 2,
          'language_id': 0,
          'question': 'What is a structure in C?',
          'answer':
              'A structure is a user-defined data type that allows grouping variables of different types.'
        });
        await db.insert('questions', {
          'id': 3,
          'language_id': 1,
          'question': 'What is the main method in Java?',
          'answer':
              'The main method is the entry point of any Java application.'
        });
        await db.insert('questions', {
          'id': 4,
          'language_id': 1,
          'question': 'What is inheritance in Java?',
          'answer':
              'Inheritance is a mechanism where one class can inherit fields and methods from another class.'
        });
        await db.insert('questions', {
          'id': 5,
          'language_id': 2,
          'question': 'What is a list in Python?',
          'answer':
              'A list is a collection which is ordered and changeable. It allows duplicate members.'
        });
        await db.insert('questions', {
          'id': 6,
          'language_id': 2,
          'question': 'What is a dictionary in Python?',
          'answer':
              'A dictionary is a collection of key-value pairs that is unordered, changeable, and indexed.'
        });
      },
    );
  }

  Future<List<Map<String, dynamic>>> getQuestions(int languageId) async {
    final db = await database;
    return await db
        .query('questions', where: 'language_id = ?', whereArgs: [languageId]);
  }

  Future<void> toggleBookmark(int questionId) async {
    final db = await database;
    final question =
        await db.query('questions', where: 'id = ?', whereArgs: [questionId]);

    if (question.isNotEmpty) {
      int isBookmarked = question.first['is_bookmarked'] == 1 ? 0 : 1;
      await db.update(
        'questions',
        {'is_bookmarked': isBookmarked},
        where: 'id = ?',
        whereArgs: [questionId],
      );
    }
  }

  Future<List<Map<String, dynamic>>> getBookmarkedQuestions() async {
    final db = await database;
    return await db
        .query('questions', where: 'is_bookmarked = ?', whereArgs: [1]);
  }
}
