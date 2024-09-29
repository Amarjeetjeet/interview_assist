import 'package:flutter/material.dart';

import 'dashboard/ui/dashboard_screen.dart';
import 'data/performance_report_helper.dart';
import 'data/question_database_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  QuestionAnswerDatabaseHelper();
  PerformanceReportHelper();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}
