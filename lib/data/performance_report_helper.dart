import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class PerformanceReportHelper {
  static final PerformanceReportHelper _instance =
      PerformanceReportHelper._internal();
  static Database? _database;

  factory PerformanceReportHelper() {
    return _instance;
  }

  PerformanceReportHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'performance_report.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE performance_report (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            mcq_name TEXT NOT NULL,
            score TEXT NOT NULL,
            date TEXT NOT NULL
          );
      '''); // Removed the trailing comma after 'date TEXT NOT NULL'
      },
    );
  }

  Future<void> saveReport({
    required String mcqName,
    required String score,
    required String date,
  }) async {
    await _database?.insert('performance_report', {
      'mcq_name': mcqName,
      'score': score,
      'date': date,
    });
  }

  Future<List<Map<String, dynamic>>> getPerformanceReport() async {
    final db = await database;
    return await db.query('performance_report');
  }
}
